#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("s_axis_ip_TDATA", 512, hls_in, 0, "axis", "in_data", 1),
	Port_Property("s_axis_ip_TKEEP", 64, hls_in, 1, "axis", "in_data", 1),
	Port_Property("s_axis_ip_TSTRB", 64, hls_in, 2, "axis", "in_data", 1),
	Port_Property("s_axis_ip_TLAST", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("s_axis_arp_lookup_reply_V_TDATA", 128, hls_in, 4, "axis", "in_data", 1),
	Port_Property("m_axis_ip_TDATA", 512, hls_out, 5, "axis", "out_data", 1),
	Port_Property("m_axis_ip_TKEEP", 64, hls_out, 6, "axis", "out_data", 1),
	Port_Property("m_axis_ip_TSTRB", 64, hls_out, 7, "axis", "out_data", 1),
	Port_Property("m_axis_ip_TLAST", 1, hls_out, 8, "axis", "out_data", 1),
	Port_Property("m_axis_arp_lookup_request_V_TDATA", 32, hls_out, 9, "axis", "out_data", 1),
	Port_Property("myMacAddress", 48, hls_in, 10, "ap_none", "in_data", 1),
	Port_Property("regSubNetMask", 32, hls_in, 11, "ap_none", "in_data", 1),
	Port_Property("regDefaultGateway", 32, hls_in, 12, "ap_none", "in_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axis_ip_TVALID", 1, hls_in, 3, "axis", "in_vld", 1),
	Port_Property("s_axis_ip_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("m_axis_ip_TVALID", 1, hls_out, 8, "axis", "out_vld", 1),
	Port_Property("m_axis_ip_TREADY", 1, hls_in, 8, "axis", "out_acc", 1),
	Port_Property("m_axis_arp_lookup_request_V_TVALID", 1, hls_out, 9, "axis", "out_vld", 1),
	Port_Property("m_axis_arp_lookup_request_V_TREADY", 1, hls_in, 9, "axis", "out_acc", 1),
	Port_Property("s_axis_arp_lookup_reply_V_TVALID", 1, hls_in, 4, "axis", "in_vld", 1),
	Port_Property("s_axis_arp_lookup_reply_V_TREADY", 1, hls_out, 4, "axis", "in_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "mac_ip_encode_top";
