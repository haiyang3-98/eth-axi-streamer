#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("s_axis_rx_data_TDATA", 512, hls_in, 0, "axis", "in_data", 1),
	Port_Property("s_axis_rx_data_TKEEP", 64, hls_in, 1, "axis", "in_data", 1),
	Port_Property("s_axis_rx_data_TSTRB", 64, hls_in, 2, "axis", "in_data", 1),
	Port_Property("s_axis_rx_data_TLAST", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("m_axis_rx_meta_V_TDATA", 64, hls_out, 4, "axis", "out_data", 1),
	Port_Property("m_axis_rx_data_TDATA", 512, hls_out, 5, "axis", "out_data", 1),
	Port_Property("m_axis_rx_data_TKEEP", 64, hls_out, 6, "axis", "out_data", 1),
	Port_Property("m_axis_rx_data_TSTRB", 64, hls_out, 7, "axis", "out_data", 1),
	Port_Property("m_axis_rx_data_TLAST", 1, hls_out, 8, "axis", "out_data", 1),
	Port_Property("s_axis_tx_meta_V_TDATA", 64, hls_in, 9, "axis", "in_data", 1),
	Port_Property("s_axis_tx_data_TDATA", 512, hls_in, 10, "axis", "in_data", 1),
	Port_Property("s_axis_tx_data_TKEEP", 64, hls_in, 11, "axis", "in_data", 1),
	Port_Property("s_axis_tx_data_TSTRB", 64, hls_in, 12, "axis", "in_data", 1),
	Port_Property("s_axis_tx_data_TLAST", 1, hls_in, 13, "axis", "in_data", 1),
	Port_Property("m_axis_tx_data_TDATA", 512, hls_out, 14, "axis", "out_data", 1),
	Port_Property("m_axis_tx_data_TKEEP", 64, hls_out, 15, "axis", "out_data", 1),
	Port_Property("m_axis_tx_data_TSTRB", 64, hls_out, 16, "axis", "out_data", 1),
	Port_Property("m_axis_tx_data_TLAST", 1, hls_out, 17, "axis", "out_data", 1),
	Port_Property("local_ipv4_address", 32, hls_in, 18, "ap_none", "in_data", 1),
	Port_Property("protocol", 8, hls_in, 19, "ap_none", "in_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axis_rx_data_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("s_axis_rx_data_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("s_axis_tx_data_TVALID", 1, hls_in, 13, "axis", "in_vld", 1),
	Port_Property("s_axis_tx_data_TREADY", 1, hls_out, 13, "axis", "in_acc", 1),
	Port_Property("m_axis_rx_data_TVALID", 1, hls_out, 8, "axis", "out_vld", 1),
	Port_Property("m_axis_rx_data_TREADY", 1, hls_in, 8, "axis", "out_acc", 1),
	Port_Property("m_axis_tx_data_TVALID", 1, hls_out, 17, "axis", "out_vld", 1),
	Port_Property("m_axis_tx_data_TREADY", 1, hls_in, 17, "axis", "out_acc", 1),
	Port_Property("m_axis_rx_meta_V_TVALID", 1, hls_out, 4, "axis", "out_vld", 1),
	Port_Property("m_axis_rx_meta_V_TREADY", 1, hls_in, 4, "axis", "out_acc", 1),
	Port_Property("s_axis_tx_meta_V_TVALID", 1, hls_in, 9, "axis", "in_vld", 1),
	Port_Property("s_axis_tx_meta_V_TREADY", 1, hls_out, 9, "axis", "in_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "ipv4_top";
