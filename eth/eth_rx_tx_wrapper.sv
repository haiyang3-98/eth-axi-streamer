module eth_rx_tx_wrapper #(
  parameter integer C_AXIS_NET_RX_TDATA_WIDTH  = 512,
  parameter integer C_AXIS_NET_TX_TDATA_WIDTH  = 512
)(
    input wire          ap_clk,
    input wire          ap_rst,

	//rx eth hdr stripped
    output wire                                    m_axis_net_rx_tvalid   ,
    input  wire                                    m_axis_net_rx_tready   ,
    output wire [C_AXIS_NET_RX_TDATA_WIDTH-1:0]    m_axis_net_rx_tdata    ,
    output wire [C_AXIS_NET_RX_TDATA_WIDTH/8-1:0]  m_axis_net_rx_tkeep    ,
    output wire                                    m_axis_net_rx_tlast    ,
    output wire                                    m_axis_net_rx_tuser,

	//rx eth frame 512b
    input  wire                                    s_axis_eth_net_rx_tvalid   ,
    output wire                                    s_axis_eth_net_rx_tready   ,
    input  wire  [511:0]                           s_axis_eth_net_rx_tdata    ,
    input  wire  [63:0]                            s_axis_eth_net_rx_tkeep    ,
    input  wire                                    s_axis_eth_net_rx_tlast    ,
    input  wire                                    s_axis_eth_net_rx_tuser    ,

	//tx eth hdr added 512b
    output wire                                     m_axis_eth_net_tx_tvalid   ,
    input  wire                                     m_axis_eth_net_tx_tready   ,
    output wire  [511:0]                            m_axis_eth_net_tx_tdata    ,
    output wire  [63:0]                             m_axis_eth_net_tx_tkeep    ,
    output wire                                     m_axis_eth_net_tx_tlast    ,

	//tx payload
    input  wire                                    s_axis_net_tx_tvalid   ,
    output wire                                    s_axis_net_tx_tready   ,
    input  wire [C_AXIS_NET_TX_TDATA_WIDTH-1:0]    s_axis_net_tx_tdata    ,
    input  wire [C_AXIS_NET_TX_TDATA_WIDTH/8-1:0]  s_axis_net_tx_tkeep    ,
    input  wire                                    s_axis_net_tx_tlast    ,

    input wire [47:0] local_mac,  // = 48'h02_00_00_00_00_00;
    input wire [47:0] remote_mac, //  = 48'h02_00_00_00_00_01;
    input wire [15:0] ethertype  // = 16'hFF_FF;

 );


    
reg tx_hdr_valid = 1'b1;
wire s_eth_hdr_ready;
always @(posedge ap_clk) begin
  if(ap_rst) begin
    tx_hdr_valid <= 1'b1;
  end else if (tx_hdr_valid && s_eth_hdr_ready) begin
    tx_hdr_valid <= 1'b0;
  end else if (s_axis_net_tx_tvalid && s_axis_net_tx_tready && s_axis_net_tx_tlast) begin
    tx_hdr_valid <= 1'b1;
  end
end

reg [47:0] stored_dest_mac;
reg [47:0] stored_src_mac;
reg [31:0] stored_ethertype;

wire [47:0] m_eth_dest_mac;
wire [47:0] m_eth_src_mac;
wire [15:0] m_ethertype;
wire m_eth_hdr_valid;
 

always @(posedge ap_clk) begin
  if(m_eth_hdr_valid) begin
    stored_dest_mac <= m_eth_dest_mac;
    stored_src_mac <= m_eth_src_mac;
    stored_ethertype <= m_ethertype; 
  end
end

wire rx_mac_match;
assign rx_mac_match = (stored_dest_mac == local_mac) && (stored_src_mac == remote_mac) && (stored_ethertype == ethertype);

 
wire                                    axis_net_rx_data_aclk_tvalid   ;
wire                                    axis_net_rx_data_aclk_tready   ;
wire  [511:0]                           axis_net_rx_data_aclk_tdata    ;
wire  [63:0]                            axis_net_rx_data_aclk_tkeep    ;
wire                                    axis_net_rx_data_aclk_tlast    ;
wire                                    axis_net_rx_data_aclk_tuser    ;

wire                                    axis_net_tx_data_aclk_tvalid   ;
wire                                    axis_net_tx_data_aclk_tready   ;
wire  [511:0]                           axis_net_tx_data_aclk_tdata    ;
wire  [63:0]                            axis_net_tx_data_aclk_tkeep    ;
wire                                    axis_net_tx_data_aclk_tlast    ;

eth_axis_rx #
(
    .DATA_WIDTH(512)
) eth_axis_rx_inst
(
    .clk(ap_clk),
    .rst(areset),

    .s_axis_tdata(s_axis_eth_net_rx_tdata),
    .s_axis_tkeep(s_axis_eth_net_rx_tkeep),
    .s_axis_tvalid(s_axis_eth_net_rx_tvalid),
    .s_axis_tready(s_axis_eth_net_rx_tready),
    .s_axis_tlast(s_axis_eth_net_rx_tlast),
    .s_axis_tuser(s_axis_eth_net_rx_tuser),

 
    .m_eth_hdr_valid(m_eth_hdr_valid),
    .m_eth_hdr_ready(1'b1),
    .m_eth_dest_mac(m_eth_dest_mac),
    .m_eth_src_mac(m_eth_src_mac),
    .m_eth_type(m_ethertype),
    .m_eth_payload_axis_tdata(axis_net_rx_data_aclk_tdata),
    .m_eth_payload_axis_tkeep(axis_net_rx_data_aclk_tkeep),
    .m_eth_payload_axis_tvalid(axis_net_rx_data_aclk_tvalid),
    .m_eth_payload_axis_tready(axis_net_rx_data_aclk_tready),
    .m_eth_payload_axis_tlast(axis_net_rx_data_aclk_tlast),
    .m_eth_payload_axis_tuser(axis_net_rx_data_aclk_tuser),

    .busy(),
    .error_header_early_termination()
);




axis_adapter #
(
    .S_DATA_WIDTH(512),
    .M_DATA_WIDTH(C_AXIS_NET_RX_TDATA_WIDTH) 
) axis_adapter_rx
(
    .clk(ap_clk),
    .rst(areset),

    .s_axis_tdata(axis_net_rx_data_aclk_tdata),
    .s_axis_tkeep(axis_net_rx_data_aclk_tkeep),
    .s_axis_tvalid(axis_net_rx_data_aclk_tvalid && rx_mac_match),
    .s_axis_tready(axis_net_rx_data_aclk_tready),
    .s_axis_tlast(axis_net_rx_data_aclk_tlast),
    .s_axis_tuser(axis_net_rx_data_aclk_tuser), 

 
    .m_axis_tdata(m_axis_net_rx_tdata),
    .m_axis_tkeep(m_axis_net_rx_tkeep),
    .m_axis_tvalid(m_axis_net_rx_tvalid),
    .m_axis_tready(m_axis_net_rx_tready),
    .m_axis_tlast(m_axis_net_rx_tlast),
    .m_axis_tuser(m_axis_net_rx_tuser)
);


eth_axis_tx #
(
    .DATA_WIDTH(512) 
) eth_axis_tx_inst
(
    .clk(ap_clk),
    .rst(areset),
 
    .s_eth_hdr_valid(tx_hdr_valid),
    .s_eth_hdr_ready(s_eth_hdr_ready),
    .s_eth_dest_mac(remote_mac),
    .s_eth_src_mac(local_mac),
    .s_eth_type(ethertype),
    .s_eth_payload_axis_tdata(axis_net_tx_data_aclk_tdata),
    .s_eth_payload_axis_tkeep(axis_net_tx_data_aclk_tkeep),
    .s_eth_payload_axis_tvalid(axis_net_tx_data_aclk_tvalid),
    .s_eth_payload_axis_tready(axis_net_tx_data_aclk_tready),
    .s_eth_payload_axis_tlast(axis_net_tx_data_aclk_tlast),
    .s_eth_payload_axis_tuser(1'b0),


    .m_axis_tdata(m_axis_eth_net_tx_tdata),
    .m_axis_tkeep(m_axis_eth_net_tx_tkeep),
    .m_axis_tvalid(m_axis_eth_net_tx_tvalid),
    .m_axis_tready(m_axis_eth_net_tx_tready),
    .m_axis_tlast(m_axis_eth_net_tx_tlast),
    .m_axis_tuser(),

    .busy()
);


axis_adapter #
(
    .S_DATA_WIDTH(C_AXIS_NET_TX_TDATA_WIDTH),
    .M_DATA_WIDTH(512) 
) axis_adapter_tx
(
    .clk(ap_clk),
    .rst(areset),

    .s_axis_tdata(s_axis_net_tx_tdata),
    .s_axis_tkeep(s_axis_net_tx_tkeep),
    .s_axis_tvalid(s_axis_net_tx_tvalid),
    .s_axis_tready(s_axis_net_tx_tready),
    .s_axis_tlast(s_axis_net_tx_tlast),
    .s_axis_tuser(1'b0),

 
    .m_axis_tdata(axis_net_tx_data_aclk_tdata),
    .m_axis_tkeep(axis_net_tx_data_aclk_tkeep),
    .m_axis_tvalid(axis_net_tx_data_aclk_tvalid),
    .m_axis_tready(axis_net_tx_data_aclk_tready),
    .m_axis_tlast(axis_net_tx_data_aclk_tlast),
    .m_axis_tuser()
);

ila_eth inst_ila_eth (
    .clk(ap_clk),
    //rx
    .probe0(m_eth_hdr_valid), //4
    .probe1(m_eth_dest_mac),
    .probe2(m_eth_src_mac), // input wire [0:0]  probe0
    .probe3(m_ethertype) // input wire [0:0]  probe1
);

endmodule





