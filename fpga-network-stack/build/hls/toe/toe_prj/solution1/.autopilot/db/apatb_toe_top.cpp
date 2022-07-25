#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_s_axis_tcp_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tcp_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tcp_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tcp_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tcp_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_tcp_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tcp_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tcp_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_tcp_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tcp_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_txwrite_sts_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txwrite_sts_V.dat"
#define AUTOTB_TVOUT_s_axis_txwrite_sts_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txwrite_sts_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts_V "../tv/stream_size/stream_size_in_s_axis_txwrite_sts_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts_V "../tv/stream_size/stream_ingress_status_s_axis_txwrite_sts_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rxread_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rxread_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_rxread_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rxread_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_rxread_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rxread_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_rxread_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rxread_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_rxread_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rxread_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_rxread_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rxread_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_rxread_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rxread_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_rxread_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rxread_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_rxread_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_rxread_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_rxread_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_rxread_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_rxread_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_rxread_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_rxread_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_rxread_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_txread_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txread_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_txread_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txread_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_txread_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txread_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_txread_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txread_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_txread_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txread_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_txread_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txread_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_txread_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_txread_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_txread_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_txread_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_txread_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_txread_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_txread_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_txread_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_txread_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_txread_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_txread_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_txread_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tcp_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tcp_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tcp_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tcp_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tcp_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_tcp_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tcp_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tcp_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tcp_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tcp_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tcp_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_tcp_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tcp_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_txwrite_cmd_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_cmd_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_cmd_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_cmd_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd_V "../tv/stream_size/stream_size_out_m_axis_txwrite_cmd_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_cmd_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_cmd_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_txread_cmd_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txread_cmd_V.dat"
#define AUTOTB_TVOUT_m_axis_txread_cmd_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txread_cmd_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd_V "../tv/stream_size/stream_size_out_m_axis_txread_cmd_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txread_cmd_V "../tv/stream_size/stream_egress_status_m_axis_txread_cmd_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_rxwrite_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rxwrite_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rxwrite_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_rxwrite_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rxwrite_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rxwrite_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_rxwrite_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rxwrite_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rxwrite_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_rxwrite_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rxwrite_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rxwrite_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_rxwrite_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_rxwrite_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_rxwrite_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_rxwrite_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_txwrite_data_V_data_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_txwrite_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_txwrite_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_txwrite_data_V_last_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_txwrite_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_txwrite_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_txwrite_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_txwrite_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_txwrite_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_txwrite_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_txwrite_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_session_lup_rsp_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_session_lup_rsp_V.dat"
#define AUTOTB_TVOUT_s_axis_session_lup_rsp_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_session_lup_rsp_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp_V "../tv/stream_size/stream_size_in_s_axis_session_lup_rsp_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp_V "../tv/stream_size/stream_ingress_status_s_axis_session_lup_rsp_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_session_upd_rsp_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_session_upd_rsp_V.dat"
#define AUTOTB_TVOUT_s_axis_session_upd_rsp_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_session_upd_rsp_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp_V "../tv/stream_size/stream_size_in_s_axis_session_upd_rsp_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp_V "../tv/stream_size/stream_ingress_status_s_axis_session_upd_rsp_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_session_lup_req_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_session_lup_req_V.dat"
#define AUTOTB_TVOUT_m_axis_session_lup_req_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_session_lup_req_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req_V "../tv/stream_size/stream_size_out_m_axis_session_lup_req_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_session_lup_req_V "../tv/stream_size/stream_egress_status_m_axis_session_lup_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_session_upd_req_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_session_upd_req_V.dat"
#define AUTOTB_TVOUT_m_axis_session_upd_req_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_session_upd_req_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req_V "../tv/stream_size/stream_size_out_m_axis_session_upd_req_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_session_upd_req_V "../tv/stream_size/stream_egress_status_m_axis_session_upd_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_listen_port_req_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_listen_port_req_V.dat"
#define AUTOTB_TVOUT_s_axis_listen_port_req_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_listen_port_req_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req_V "../tv/stream_size/stream_size_in_s_axis_listen_port_req_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req_V "../tv/stream_size/stream_ingress_status_s_axis_listen_port_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rx_data_req_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_rx_data_req_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_req_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_rx_data_req_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req_V "../tv/stream_size/stream_size_in_s_axis_rx_data_req_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_open_conn_req_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_open_conn_req_V.dat"
#define AUTOTB_TVOUT_s_axis_open_conn_req_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_open_conn_req_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req_V "../tv/stream_size/stream_size_in_s_axis_open_conn_req_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req_V "../tv/stream_size/stream_ingress_status_s_axis_open_conn_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_close_conn_req_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_close_conn_req_V.dat"
#define AUTOTB_TVOUT_s_axis_close_conn_req_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_close_conn_req_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req_V "../tv/stream_size/stream_size_in_s_axis_close_conn_req_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req_V "../tv/stream_size/stream_ingress_status_s_axis_close_conn_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tx_data_req_metadata_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_metadata_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_metadata_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_metadata_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_metadata_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_metadata_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tx_data_req_V_data_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_V_data_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_tx_data_req_V_last_V "../tv/cdatafile/c.toe_top.autotvin_s_axis_tx_data_req_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_data_req_V_last_V "../tv/cdatafile/c.toe_top.autotvout_s_axis_tx_data_req_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V "../tv/stream_size/stream_size_in_s_axis_tx_data_req_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_tx_data_req_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_listen_port_rsp_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_listen_port_rsp_V.dat"
#define AUTOTB_TVOUT_m_axis_listen_port_rsp_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_listen_port_rsp_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp_V "../tv/stream_size/stream_size_out_m_axis_listen_port_rsp_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_listen_port_rsp_V "../tv/stream_size/stream_egress_status_m_axis_listen_port_rsp_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_notification_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_notification_V.dat"
#define AUTOTB_TVOUT_m_axis_notification_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_notification_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_notification_V "../tv/stream_size/stream_size_out_m_axis_notification_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_notification_V "../tv/stream_size/stream_egress_status_m_axis_notification_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_rx_data_rsp_metadata_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_metadata_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_metadata_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_metadata_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_metadata_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_metadata_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_rx_data_rsp_V_data_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_rx_data_rsp_V_keep_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_rx_data_rsp_V_strb_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_rx_data_rsp_V_last_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_rx_data_rsp_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_rx_data_rsp_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_data_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V "../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_last_V "../tv/stream_size/stream_egress_status_m_axis_rx_data_rsp_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_open_conn_rsp_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_open_conn_rsp_V.dat"
#define AUTOTB_TVOUT_m_axis_open_conn_rsp_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_open_conn_rsp_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp_V "../tv/stream_size/stream_size_out_m_axis_open_conn_rsp_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_open_conn_rsp_V "../tv/stream_size/stream_egress_status_m_axis_open_conn_rsp_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_data_rsp_V "../tv/cdatafile/c.toe_top.autotvin_m_axis_tx_data_rsp_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_rsp_V "../tv/cdatafile/c.toe_top.autotvout_m_axis_tx_data_rsp_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp_V "../tv/stream_size/stream_size_out_m_axis_tx_data_rsp_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_rsp_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_rsp_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_axis_data_count "../tv/cdatafile/c.toe_top.autotvin_axis_data_count.dat"
#define AUTOTB_TVOUT_axis_data_count "../tv/cdatafile/c.toe_top.autotvout_axis_data_count.dat"
// wrapc file define:
#define AUTOTB_TVIN_axis_max_data_count "../tv/cdatafile/c.toe_top.autotvin_axis_max_data_count.dat"
#define AUTOTB_TVOUT_axis_max_data_count "../tv/cdatafile/c.toe_top.autotvout_axis_max_data_count.dat"
// wrapc file define:
#define AUTOTB_TVIN_myIpAddress "../tv/cdatafile/c.toe_top.autotvin_myIpAddress.dat"
#define AUTOTB_TVOUT_myIpAddress "../tv/cdatafile/c.toe_top.autotvout_myIpAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_regSessionCount "../tv/cdatafile/c.toe_top.autotvin_regSessionCount.dat"
#define AUTOTB_TVOUT_regSessionCount "../tv/cdatafile/c.toe_top.autotvout_regSessionCount.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tcp_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tcp_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tcp_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_txwrite_sts_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txwrite_sts_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rxread_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rxread_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rxread_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rxread_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rxread_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rxread_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rxread_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rxread_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_txread_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txread_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_txread_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txread_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_txread_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txread_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_txread_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_txread_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tcp_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tcp_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tcp_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tcp_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tcp_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tcp_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_txwrite_cmd_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_cmd_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_txread_cmd_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txread_cmd_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rxwrite_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rxwrite_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rxwrite_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rxwrite_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_txwrite_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_session_lup_rsp_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_session_lup_rsp_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_session_upd_rsp_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_session_upd_rsp_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_session_lup_req_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_session_lup_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_session_upd_req_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_session_upd_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_listen_port_req_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_listen_port_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rx_data_req_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_rx_data_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_open_conn_req_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_open_conn_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_close_conn_req_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_close_conn_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_metadata_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_metadata_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_tx_data_req_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_s_axis_tx_data_req_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_listen_port_rsp_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_listen_port_rsp_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_notification_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_notification_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_metadata_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_metadata_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_data_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_keep_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_strb_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_last_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_rx_data_rsp_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_open_conn_rsp_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_open_conn_rsp_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_data_rsp_V "../tv/rtldatafile/rtl.toe_top.autotvout_m_axis_tx_data_rsp_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_axis_data_count "../tv/rtldatafile/rtl.toe_top.autotvout_axis_data_count.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_axis_max_data_count "../tv/rtldatafile/rtl.toe_top.autotvout_axis_max_data_count.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_myIpAddress "../tv/rtldatafile/rtl.toe_top.autotvout_myIpAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regSessionCount "../tv/rtldatafile/rtl.toe_top.autotvout_regSessionCount.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  s_axis_tcp_data_V_data_V_depth = 0;
  s_axis_tcp_data_V_keep_V_depth = 0;
  s_axis_tcp_data_V_strb_V_depth = 0;
  s_axis_tcp_data_V_last_V_depth = 0;
  s_axis_txwrite_sts_V_depth = 0;
  s_axis_rxread_data_V_data_V_depth = 0;
  s_axis_rxread_data_V_keep_V_depth = 0;
  s_axis_rxread_data_V_strb_V_depth = 0;
  s_axis_rxread_data_V_last_V_depth = 0;
  s_axis_txread_data_V_data_V_depth = 0;
  s_axis_txread_data_V_keep_V_depth = 0;
  s_axis_txread_data_V_strb_V_depth = 0;
  s_axis_txread_data_V_last_V_depth = 0;
  m_axis_tcp_data_V_data_V_depth = 0;
  m_axis_tcp_data_V_keep_V_depth = 0;
  m_axis_tcp_data_V_strb_V_depth = 0;
  m_axis_tcp_data_V_last_V_depth = 0;
  m_axis_txwrite_cmd_V_depth = 0;
  m_axis_txread_cmd_V_depth = 0;
  m_axis_rxwrite_data_V_data_V_depth = 0;
  m_axis_rxwrite_data_V_keep_V_depth = 0;
  m_axis_rxwrite_data_V_strb_V_depth = 0;
  m_axis_rxwrite_data_V_last_V_depth = 0;
  m_axis_txwrite_data_V_data_V_depth = 0;
  m_axis_txwrite_data_V_keep_V_depth = 0;
  m_axis_txwrite_data_V_strb_V_depth = 0;
  m_axis_txwrite_data_V_last_V_depth = 0;
  s_axis_session_lup_rsp_V_depth = 0;
  s_axis_session_upd_rsp_V_depth = 0;
  m_axis_session_lup_req_V_depth = 0;
  m_axis_session_upd_req_V_depth = 0;
  s_axis_listen_port_req_V_depth = 0;
  s_axis_rx_data_req_V_depth = 0;
  s_axis_open_conn_req_V_depth = 0;
  s_axis_close_conn_req_V_depth = 0;
  s_axis_tx_data_req_metadata_V_depth = 0;
  s_axis_tx_data_req_V_data_V_depth = 0;
  s_axis_tx_data_req_V_keep_V_depth = 0;
  s_axis_tx_data_req_V_strb_V_depth = 0;
  s_axis_tx_data_req_V_last_V_depth = 0;
  m_axis_listen_port_rsp_V_depth = 0;
  m_axis_notification_V_depth = 0;
  m_axis_rx_data_rsp_metadata_V_depth = 0;
  m_axis_rx_data_rsp_V_data_V_depth = 0;
  m_axis_rx_data_rsp_V_keep_V_depth = 0;
  m_axis_rx_data_rsp_V_strb_V_depth = 0;
  m_axis_rx_data_rsp_V_last_V_depth = 0;
  m_axis_open_conn_rsp_V_depth = 0;
  m_axis_tx_data_rsp_V_depth = 0;
  axis_data_count_depth = 0;
  axis_max_data_count_depth = 0;
  myIpAddress_depth = 0;
  regSessionCount_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{s_axis_tcp_data_V_data_V " << s_axis_tcp_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_tcp_data_V_keep_V " << s_axis_tcp_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tcp_data_V_strb_V " << s_axis_tcp_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tcp_data_V_last_V " << s_axis_tcp_data_V_last_V_depth << "}\n";
  total_list << "{s_axis_txwrite_sts_V " << s_axis_txwrite_sts_V_depth << "}\n";
  total_list << "{s_axis_rxread_data_V_data_V " << s_axis_rxread_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_rxread_data_V_keep_V " << s_axis_rxread_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_rxread_data_V_strb_V " << s_axis_rxread_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_rxread_data_V_last_V " << s_axis_rxread_data_V_last_V_depth << "}\n";
  total_list << "{s_axis_txread_data_V_data_V " << s_axis_txread_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_txread_data_V_keep_V " << s_axis_txread_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_txread_data_V_strb_V " << s_axis_txread_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_txread_data_V_last_V " << s_axis_txread_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_tcp_data_V_data_V " << m_axis_tcp_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_tcp_data_V_keep_V " << m_axis_tcp_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tcp_data_V_strb_V " << m_axis_tcp_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tcp_data_V_last_V " << m_axis_tcp_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_txwrite_cmd_V " << m_axis_txwrite_cmd_V_depth << "}\n";
  total_list << "{m_axis_txread_cmd_V " << m_axis_txread_cmd_V_depth << "}\n";
  total_list << "{m_axis_rxwrite_data_V_data_V " << m_axis_rxwrite_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_rxwrite_data_V_keep_V " << m_axis_rxwrite_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_rxwrite_data_V_strb_V " << m_axis_rxwrite_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_rxwrite_data_V_last_V " << m_axis_rxwrite_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_txwrite_data_V_data_V " << m_axis_txwrite_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_txwrite_data_V_keep_V " << m_axis_txwrite_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_txwrite_data_V_strb_V " << m_axis_txwrite_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_txwrite_data_V_last_V " << m_axis_txwrite_data_V_last_V_depth << "}\n";
  total_list << "{s_axis_session_lup_rsp_V " << s_axis_session_lup_rsp_V_depth << "}\n";
  total_list << "{s_axis_session_upd_rsp_V " << s_axis_session_upd_rsp_V_depth << "}\n";
  total_list << "{m_axis_session_lup_req_V " << m_axis_session_lup_req_V_depth << "}\n";
  total_list << "{m_axis_session_upd_req_V " << m_axis_session_upd_req_V_depth << "}\n";
  total_list << "{s_axis_listen_port_req_V " << s_axis_listen_port_req_V_depth << "}\n";
  total_list << "{s_axis_rx_data_req_V " << s_axis_rx_data_req_V_depth << "}\n";
  total_list << "{s_axis_open_conn_req_V " << s_axis_open_conn_req_V_depth << "}\n";
  total_list << "{s_axis_close_conn_req_V " << s_axis_close_conn_req_V_depth << "}\n";
  total_list << "{s_axis_tx_data_req_metadata_V " << s_axis_tx_data_req_metadata_V_depth << "}\n";
  total_list << "{s_axis_tx_data_req_V_data_V " << s_axis_tx_data_req_V_data_V_depth << "}\n";
  total_list << "{s_axis_tx_data_req_V_keep_V " << s_axis_tx_data_req_V_keep_V_depth << "}\n";
  total_list << "{s_axis_tx_data_req_V_strb_V " << s_axis_tx_data_req_V_strb_V_depth << "}\n";
  total_list << "{s_axis_tx_data_req_V_last_V " << s_axis_tx_data_req_V_last_V_depth << "}\n";
  total_list << "{m_axis_listen_port_rsp_V " << m_axis_listen_port_rsp_V_depth << "}\n";
  total_list << "{m_axis_notification_V " << m_axis_notification_V_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_metadata_V " << m_axis_rx_data_rsp_metadata_V_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_V_data_V " << m_axis_rx_data_rsp_V_data_V_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_V_keep_V " << m_axis_rx_data_rsp_V_keep_V_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_V_strb_V " << m_axis_rx_data_rsp_V_strb_V_depth << "}\n";
  total_list << "{m_axis_rx_data_rsp_V_last_V " << m_axis_rx_data_rsp_V_last_V_depth << "}\n";
  total_list << "{m_axis_open_conn_rsp_V " << m_axis_open_conn_rsp_V_depth << "}\n";
  total_list << "{m_axis_tx_data_rsp_V " << m_axis_tx_data_rsp_V_depth << "}\n";
  total_list << "{axis_data_count " << axis_data_count_depth << "}\n";
  total_list << "{axis_max_data_count " << axis_max_data_count_depth << "}\n";
  total_list << "{myIpAddress " << myIpAddress_depth << "}\n";
  total_list << "{regSessionCount " << regSessionCount_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int s_axis_tcp_data_V_data_V_depth;
    int s_axis_tcp_data_V_keep_V_depth;
    int s_axis_tcp_data_V_strb_V_depth;
    int s_axis_tcp_data_V_last_V_depth;
    int s_axis_txwrite_sts_V_depth;
    int s_axis_rxread_data_V_data_V_depth;
    int s_axis_rxread_data_V_keep_V_depth;
    int s_axis_rxread_data_V_strb_V_depth;
    int s_axis_rxread_data_V_last_V_depth;
    int s_axis_txread_data_V_data_V_depth;
    int s_axis_txread_data_V_keep_V_depth;
    int s_axis_txread_data_V_strb_V_depth;
    int s_axis_txread_data_V_last_V_depth;
    int m_axis_tcp_data_V_data_V_depth;
    int m_axis_tcp_data_V_keep_V_depth;
    int m_axis_tcp_data_V_strb_V_depth;
    int m_axis_tcp_data_V_last_V_depth;
    int m_axis_txwrite_cmd_V_depth;
    int m_axis_txread_cmd_V_depth;
    int m_axis_rxwrite_data_V_data_V_depth;
    int m_axis_rxwrite_data_V_keep_V_depth;
    int m_axis_rxwrite_data_V_strb_V_depth;
    int m_axis_rxwrite_data_V_last_V_depth;
    int m_axis_txwrite_data_V_data_V_depth;
    int m_axis_txwrite_data_V_keep_V_depth;
    int m_axis_txwrite_data_V_strb_V_depth;
    int m_axis_txwrite_data_V_last_V_depth;
    int s_axis_session_lup_rsp_V_depth;
    int s_axis_session_upd_rsp_V_depth;
    int m_axis_session_lup_req_V_depth;
    int m_axis_session_upd_req_V_depth;
    int s_axis_listen_port_req_V_depth;
    int s_axis_rx_data_req_V_depth;
    int s_axis_open_conn_req_V_depth;
    int s_axis_close_conn_req_V_depth;
    int s_axis_tx_data_req_metadata_V_depth;
    int s_axis_tx_data_req_V_data_V_depth;
    int s_axis_tx_data_req_V_keep_V_depth;
    int s_axis_tx_data_req_V_strb_V_depth;
    int s_axis_tx_data_req_V_last_V_depth;
    int m_axis_listen_port_rsp_V_depth;
    int m_axis_notification_V_depth;
    int m_axis_rx_data_rsp_metadata_V_depth;
    int m_axis_rx_data_rsp_V_data_V_depth;
    int m_axis_rx_data_rsp_V_keep_V_depth;
    int m_axis_rx_data_rsp_V_strb_V_depth;
    int m_axis_rx_data_rsp_V_last_V_depth;
    int m_axis_open_conn_rsp_V_depth;
    int m_axis_tx_data_rsp_V_depth;
    int axis_data_count_depth;
    int axis_max_data_count_depth;
    int myIpAddress_depth;
    int regSessionCount_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s80__ { char data[128]; };
struct __cosim_s5__ { char data[5]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s14__ { char data[20]; };
struct __cosim_sC__ { char data[12]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s40__ { char data[128]; };
extern "C" void toe_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, __cosim_s2__*, __cosim_s2__*, __cosim_s4__*, volatile void *);

extern "C" void apatb_toe_top_hw(volatile void * __xlx_apatb_param_s_axis_tcp_data, volatile void * __xlx_apatb_param_s_axis_txwrite_sts, volatile void * __xlx_apatb_param_s_axis_rxread_data, volatile void * __xlx_apatb_param_s_axis_txread_data, volatile void * __xlx_apatb_param_m_axis_tcp_data, volatile void * __xlx_apatb_param_m_axis_txwrite_cmd, volatile void * __xlx_apatb_param_m_axis_txread_cmd, volatile void * __xlx_apatb_param_m_axis_rxwrite_data, volatile void * __xlx_apatb_param_m_axis_txwrite_data, volatile void * __xlx_apatb_param_s_axis_session_lup_rsp, volatile void * __xlx_apatb_param_s_axis_session_upd_rsp, volatile void * __xlx_apatb_param_m_axis_session_lup_req, volatile void * __xlx_apatb_param_m_axis_session_upd_req, volatile void * __xlx_apatb_param_s_axis_listen_port_req, volatile void * __xlx_apatb_param_s_axis_rx_data_req, volatile void * __xlx_apatb_param_s_axis_open_conn_req, volatile void * __xlx_apatb_param_s_axis_close_conn_req, volatile void * __xlx_apatb_param_s_axis_tx_data_req_metadata, volatile void * __xlx_apatb_param_s_axis_tx_data_req, volatile void * __xlx_apatb_param_m_axis_listen_port_rsp, volatile void * __xlx_apatb_param_m_axis_notification, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp_metadata, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp, volatile void * __xlx_apatb_param_m_axis_open_conn_rsp, volatile void * __xlx_apatb_param_m_axis_tx_data_rsp, __cosim_s2__* __xlx_apatb_param_axis_data_count, __cosim_s2__* __xlx_apatb_param_axis_max_data_count, __cosim_s4__* __xlx_apatb_param_myIpAddress, volatile void * __xlx_apatb_param_regSessionCount) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; ++i)((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_data)->read();
long __xlx_apatb_param_s_axis_txwrite_sts_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_txwrite_sts_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_txwrite_sts_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s5__>*)__xlx_apatb_param_s_axis_txwrite_sts)->read();
long __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; ++i)((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rxread_data)->read();
long __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; ++i)((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_txread_data)->read();
{sc_bv<1024> xlx_stream_m_axis_tcp_data_pc_buffer;
unsigned xlx_stream_m_axis_tcp_data_size = 0;

          std::vector<sc_bv<512> > m_axis_tcp_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tcp_data_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_data_size=m_axis_tcp_data_V_data_V_pc_buffer.size();
m_axis_tcp_data_V_data_V_pc_buffer_Copy=m_axis_tcp_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_data_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tcp_data_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_data_size=m_axis_tcp_data_V_keep_V_pc_buffer.size();
m_axis_tcp_data_V_keep_V_pc_buffer_Copy=m_axis_tcp_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_data_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tcp_data_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_data_size=m_axis_tcp_data_V_strb_V_pc_buffer.size();
m_axis_tcp_data_V_strb_V_pc_buffer_Copy=m_axis_tcp_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_tcp_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tcp_data_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_tcp_data_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tcp_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tcp_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_tcp_data_size=m_axis_tcp_data_V_last_V_pc_buffer.size();
m_axis_tcp_data_V_last_V_pc_buffer_Copy=m_axis_tcp_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tcp_data_size; j != e; ++j) {
xlx_stream_m_axis_tcp_data_pc_buffer.range(511, 0) = m_axis_tcp_data_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_data_pc_buffer.range(575, 512) = m_axis_tcp_data_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_data_pc_buffer.range(639, 576) = m_axis_tcp_data_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_tcp_data_pc_buffer.range(655, 648) = m_axis_tcp_data_V_last_V_pc_buffer_Copy[j];
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = xlx_stream_m_axis_tcp_data_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = xlx_stream_m_axis_tcp_data_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = xlx_stream_m_axis_tcp_data_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = xlx_stream_m_axis_tcp_data_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = xlx_stream_m_axis_tcp_data_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = xlx_stream_m_axis_tcp_data_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = xlx_stream_m_axis_tcp_data_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = xlx_stream_m_axis_tcp_data_pc_buffer.range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = xlx_stream_m_axis_tcp_data_pc_buffer.range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = xlx_stream_m_axis_tcp_data_pc_buffer.range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = xlx_stream_m_axis_tcp_data_pc_buffer.range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = xlx_stream_m_axis_tcp_data_pc_buffer.range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = xlx_stream_m_axis_tcp_data_pc_buffer.range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = xlx_stream_m_axis_tcp_data_pc_buffer.range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = xlx_stream_m_axis_tcp_data_pc_buffer.range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = xlx_stream_m_axis_tcp_data_pc_buffer.range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_data)->write(xlx_stream_elt);
}}long __xlx_apatb_param_m_axis_txwrite_cmd_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_txwrite_cmd_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_cmd_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > m_axis_txwrite_cmd_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_cmd_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_cmd_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_txwrite_cmd_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_txwrite_cmd_V_pc_buffer[j].range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_txread_cmd_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_txread_cmd_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txread_cmd_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<128> > m_axis_txread_cmd_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_txread_cmd_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txread_cmd_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_txread_cmd_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_txread_cmd_V_pc_buffer[j].range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {sc_bv<1024> xlx_stream_m_axis_rxwrite_data_pc_buffer;
unsigned xlx_stream_m_axis_rxwrite_data_size = 0;

          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rxwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rxwrite_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_rxwrite_data_size=m_axis_rxwrite_data_V_data_V_pc_buffer.size();
m_axis_rxwrite_data_V_data_V_pc_buffer_Copy=m_axis_rxwrite_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rxwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rxwrite_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_rxwrite_data_size=m_axis_rxwrite_data_V_keep_V_pc_buffer.size();
m_axis_rxwrite_data_V_keep_V_pc_buffer_Copy=m_axis_rxwrite_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rxwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rxwrite_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_rxwrite_data_size=m_axis_rxwrite_data_V_strb_V_pc_buffer.size();
m_axis_rxwrite_data_V_strb_V_pc_buffer_Copy=m_axis_rxwrite_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rxwrite_data_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_rxwrite_data_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rxwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rxwrite_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_rxwrite_data_size=m_axis_rxwrite_data_V_last_V_pc_buffer.size();
m_axis_rxwrite_data_V_last_V_pc_buffer_Copy=m_axis_rxwrite_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_rxwrite_data_size; j != e; ++j) {
xlx_stream_m_axis_rxwrite_data_pc_buffer.range(511, 0) = m_axis_rxwrite_data_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_rxwrite_data_pc_buffer.range(575, 512) = m_axis_rxwrite_data_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_rxwrite_data_pc_buffer.range(639, 576) = m_axis_rxwrite_data_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_rxwrite_data_pc_buffer.range(655, 648) = m_axis_rxwrite_data_V_last_V_pc_buffer_Copy[j];
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = xlx_stream_m_axis_rxwrite_data_pc_buffer.range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rxwrite_data)->write(xlx_stream_elt);
}}{sc_bv<1024> xlx_stream_m_axis_txwrite_data_pc_buffer;
unsigned xlx_stream_m_axis_txwrite_data_size = 0;

          std::vector<sc_bv<512> > m_axis_txwrite_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_txwrite_data_size=m_axis_txwrite_data_V_data_V_pc_buffer.size();
m_axis_txwrite_data_V_data_V_pc_buffer_Copy=m_axis_txwrite_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_txwrite_data_size=m_axis_txwrite_data_V_keep_V_pc_buffer.size();
m_axis_txwrite_data_V_keep_V_pc_buffer_Copy=m_axis_txwrite_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_txwrite_data_size=m_axis_txwrite_data_V_strb_V_pc_buffer.size();
m_axis_txwrite_data_V_strb_V_pc_buffer_Copy=m_axis_txwrite_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_txwrite_data_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_txwrite_data_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_txwrite_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_txwrite_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_txwrite_data_size=m_axis_txwrite_data_V_last_V_pc_buffer.size();
m_axis_txwrite_data_V_last_V_pc_buffer_Copy=m_axis_txwrite_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_txwrite_data_size; j != e; ++j) {
xlx_stream_m_axis_txwrite_data_pc_buffer.range(511, 0) = m_axis_txwrite_data_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_txwrite_data_pc_buffer.range(575, 512) = m_axis_txwrite_data_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_txwrite_data_pc_buffer.range(639, 576) = m_axis_txwrite_data_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_txwrite_data_pc_buffer.range(655, 648) = m_axis_txwrite_data_V_last_V_pc_buffer_Copy[j];
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = xlx_stream_m_axis_txwrite_data_pc_buffer.range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_txwrite_data)->write(xlx_stream_elt);
}}long __xlx_apatb_param_s_axis_session_lup_rsp_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_session_lup_rsp_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_session_lup_rsp_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->read();
long __xlx_apatb_param_s_axis_session_upd_rsp_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_session_upd_rsp_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_session_upd_rsp_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s14__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->read();
long __xlx_apatb_param_m_axis_session_lup_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_session_lup_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_session_lup_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<96> > m_axis_session_lup_req_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_session_lup_req_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_session_lup_req_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_sC__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = m_axis_session_lup_req_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = m_axis_session_lup_req_V_pc_buffer[j].range(95,64).to_int64();
((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_session_lup_req)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_session_upd_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_session_upd_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_session_upd_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<160> > m_axis_session_upd_req_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_session_upd_req_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_session_upd_req_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s14__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_session_upd_req_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_session_upd_req_V_pc_buffer[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*2+2] = m_axis_session_upd_req_V_pc_buffer[j].range(159,128).to_int64();
((hls::stream<__cosim_s14__>*)__xlx_apatb_param_m_axis_session_upd_req)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_listen_port_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_listen_port_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_listen_port_req_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->read();
long __xlx_apatb_param_s_axis_rx_data_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rx_data_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rx_data_req_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_rx_data_req)->read();
long __xlx_apatb_param_s_axis_open_conn_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_open_conn_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_open_conn_req_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_open_conn_req)->read();
long __xlx_apatb_param_s_axis_close_conn_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_close_conn_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_close_conn_req_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->read();
long __xlx_apatb_param_s_axis_tx_data_req_metadata_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tx_data_req_metadata_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_metadata_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->read();
long __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; ++i)((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tx_data_req)->read();
long __xlx_apatb_param_m_axis_listen_port_rsp_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_listen_port_rsp_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_listen_port_rsp_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > m_axis_listen_port_rsp_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_listen_port_rsp_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_listen_port_rsp_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
char xlx_stream_elt;

            ((char*)&xlx_stream_elt)[0] = m_axis_listen_port_rsp_V_pc_buffer[j].to_int64();
          ((hls::stream<char>*)__xlx_apatb_param_m_axis_listen_port_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_notification_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_notification_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_notification_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_notification_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<96> > m_axis_notification_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_notification_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_notification_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_sC__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = m_axis_notification_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = m_axis_notification_V_pc_buffer[j].range(95,64).to_int64();
((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_notification)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_rx_data_rsp_metadata_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_rx_data_rsp_metadata_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_metadata_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_rx_data_rsp_metadata_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp_metadata_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_metadata_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;

            ((short*)&xlx_stream_elt)[0] = m_axis_rx_data_rsp_metadata_V_pc_buffer[j].to_int64();
          ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {sc_bv<1024> xlx_stream_m_axis_rx_data_rsp_pc_buffer;
unsigned xlx_stream_m_axis_rx_data_rsp_size = 0;

          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_rx_data_rsp_size=m_axis_rx_data_rsp_V_data_V_pc_buffer.size();
m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy=m_axis_rx_data_rsp_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_rx_data_rsp_size=m_axis_rx_data_rsp_V_keep_V_pc_buffer.size();
m_axis_rx_data_rsp_V_keep_V_pc_buffer_Copy=m_axis_rx_data_rsp_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_rx_data_rsp_size=m_axis_rx_data_rsp_V_strb_V_pc_buffer.size();
m_axis_rx_data_rsp_V_strb_V_pc_buffer_Copy=m_axis_rx_data_rsp_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_rx_data_rsp_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<512> > m_axis_rx_data_rsp_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_rx_data_rsp");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_rx_data_rsp_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_rx_data_rsp_size=m_axis_rx_data_rsp_V_last_V_pc_buffer.size();
m_axis_rx_data_rsp_V_last_V_pc_buffer_Copy=m_axis_rx_data_rsp_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_rx_data_rsp_size; j != e; ++j) {
xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(511, 0) = m_axis_rx_data_rsp_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(575, 512) = m_axis_rx_data_rsp_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(639, 576) = m_axis_rx_data_rsp_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(655, 648) = m_axis_rx_data_rsp_V_last_V_pc_buffer_Copy[j];
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = xlx_stream_m_axis_rx_data_rsp_pc_buffer.range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rx_data_rsp)->write(xlx_stream_elt);
}}long __xlx_apatb_param_m_axis_open_conn_rsp_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_open_conn_rsp_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_open_conn_rsp_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<96> > m_axis_open_conn_rsp_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_open_conn_rsp_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_open_conn_rsp_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_sC__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = m_axis_open_conn_rsp_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = m_axis_open_conn_rsp_V_pc_buffer[j].range(95,64).to_int64();
((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_tx_data_rsp_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_tx_data_rsp_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_rsp_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<96> > m_axis_tx_data_rsp_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data_rsp_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_rsp_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_sC__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = m_axis_tx_data_rsp_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = m_axis_tx_data_rsp_V_pc_buffer[j].range(95,64).to_int64();
((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tx_data_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_regSessionCount);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > regSessionCount_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "regSessionCount");
  
            // push token into output port buffer
            if (AESL_token != "") {
              regSessionCount_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((short*)__xlx_apatb_param_regSessionCount)[0] = regSessionCount_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//s_axis_tcp_data
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_data_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_data_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tcp_data_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tcp_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V);
//s_axis_txwrite_sts_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_txwrite_sts_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_txwrite_sts_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts_V);
//s_axis_rxread_data
aesl_fh.touch(AUTOTB_TVIN_s_axis_rxread_data_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_rxread_data_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_rxread_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_rxread_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_rxread_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_rxread_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_rxread_data_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_rxread_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V);
//s_axis_txread_data
aesl_fh.touch(AUTOTB_TVIN_s_axis_txread_data_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_txread_data_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_txread_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_txread_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_txread_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_txread_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_txread_data_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_txread_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V);
//m_axis_tcp_data
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_data_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_data_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_tcp_data_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tcp_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tcp_data_V_last_V);
//m_axis_txwrite_cmd_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_txwrite_cmd_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_txwrite_cmd_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_cmd_V);
//m_axis_txread_cmd_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_txread_cmd_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_txread_cmd_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txread_cmd_V);
//m_axis_rxwrite_data
aesl_fh.touch(AUTOTB_TVIN_m_axis_rxwrite_data_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_rxwrite_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_rxwrite_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_rxwrite_data_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rxwrite_data_V_last_V);
//m_axis_txwrite_data
aesl_fh.touch(AUTOTB_TVIN_m_axis_txwrite_data_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_txwrite_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_txwrite_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_txwrite_data_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_txwrite_data_V_last_V);
//s_axis_session_lup_rsp_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_session_lup_rsp_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_session_lup_rsp_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp_V);
//s_axis_session_upd_rsp_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_session_upd_rsp_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_session_upd_rsp_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp_V);
//m_axis_session_lup_req_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_session_lup_req_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_session_lup_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_session_lup_req_V);
//m_axis_session_upd_req_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_session_upd_req_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_session_upd_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_session_upd_req_V);
//s_axis_listen_port_req_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_listen_port_req_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_listen_port_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req_V);
//s_axis_rx_data_req_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_rx_data_req_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_rx_data_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req_V);
//s_axis_open_conn_req_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_open_conn_req_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_open_conn_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req_V);
//s_axis_close_conn_req_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_close_conn_req_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_close_conn_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req_V);
//s_axis_tx_data_req_metadata_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_tx_data_req_metadata_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tx_data_req_metadata_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata_V);
//s_axis_tx_data_req
aesl_fh.touch(AUTOTB_TVIN_s_axis_tx_data_req_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tx_data_req_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tx_data_req_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tx_data_req_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_tx_data_req_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tx_data_req_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V);
//m_axis_listen_port_rsp_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_listen_port_rsp_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_listen_port_rsp_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_listen_port_rsp_V);
//m_axis_notification_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_notification_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_notification_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_notification_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_notification_V);
//m_axis_rx_data_rsp_metadata_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_rx_data_rsp_metadata_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_metadata_V);
//m_axis_rx_data_rsp
aesl_fh.touch(AUTOTB_TVIN_m_axis_rx_data_rsp_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_rx_data_rsp_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_rx_data_rsp_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_rx_data_rsp_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_rx_data_rsp_V_last_V);
//m_axis_open_conn_rsp_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_open_conn_rsp_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_open_conn_rsp_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_open_conn_rsp_V);
//m_axis_tx_data_rsp_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_tx_data_rsp_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tx_data_rsp_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_rsp_V);
//axis_data_count
aesl_fh.touch(AUTOTB_TVIN_axis_data_count);
aesl_fh.touch(AUTOTB_TVOUT_axis_data_count);
//axis_max_data_count
aesl_fh.touch(AUTOTB_TVIN_axis_max_data_count);
aesl_fh.touch(AUTOTB_TVOUT_axis_max_data_count);
//myIpAddress
aesl_fh.touch(AUTOTB_TVIN_myIpAddress);
aesl_fh.touch(AUTOTB_TVOUT_myIpAddress);
//regSessionCount
aesl_fh.touch(AUTOTB_TVIN_regSessionCount);
aesl_fh.touch(AUTOTB_TVOUT_regSessionCount);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s80__> __xlx_apatb_param_s_axis_tcp_data_stream_buf;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_data)->empty())
    __xlx_apatb_param_s_axis_tcp_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_data)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tcp_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_data)->write(__xlx_apatb_param_s_axis_tcp_data_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tcp_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_data)->size();
std::vector<__cosim_s5__> __xlx_apatb_param_s_axis_txwrite_sts_stream_buf;
{
  while (!((hls::stream<__cosim_s5__>*)__xlx_apatb_param_s_axis_txwrite_sts)->empty())
    __xlx_apatb_param_s_axis_txwrite_sts_stream_buf.push_back(((hls::stream<__cosim_s5__>*)__xlx_apatb_param_s_axis_txwrite_sts)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_txwrite_sts_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s5__>*)__xlx_apatb_param_s_axis_txwrite_sts)->write(__xlx_apatb_param_s_axis_txwrite_sts_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_size = ((hls::stream<__cosim_s5__>*)__xlx_apatb_param_s_axis_txwrite_sts)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_s_axis_rxread_data_stream_buf;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rxread_data)->empty())
    __xlx_apatb_param_s_axis_rxread_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rxread_data)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rxread_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rxread_data)->write(__xlx_apatb_param_s_axis_rxread_data_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rxread_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rxread_data)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_s_axis_txread_data_stream_buf;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_txread_data)->empty())
    __xlx_apatb_param_s_axis_txread_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_txread_data)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_txread_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_txread_data)->write(__xlx_apatb_param_s_axis_txread_data_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_txread_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_txread_data)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_m_axis_tcp_data_stream_buf;
long __xlx_apatb_param_m_axis_tcp_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_data)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf;
long __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_txread_cmd_stream_buf;
long __xlx_apatb_param_m_axis_txread_cmd_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_m_axis_rxwrite_data_stream_buf;
long __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rxwrite_data)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_m_axis_txwrite_data_stream_buf;
long __xlx_apatb_param_m_axis_txwrite_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_txwrite_data)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->empty())
    __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->write(__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->size();
std::vector<__cosim_s14__> __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf;
{
  while (!((hls::stream<__cosim_s14__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->empty())
    __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf.push_back(((hls::stream<__cosim_s14__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s14__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->write(__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_size = ((hls::stream<__cosim_s14__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_m_axis_session_lup_req_stream_buf;
long __xlx_apatb_param_m_axis_session_lup_req_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_session_lup_req)->size();
std::vector<__cosim_s14__> __xlx_apatb_param_m_axis_session_upd_req_stream_buf;
long __xlx_apatb_param_m_axis_session_upd_req_stream_buf_size = ((hls::stream<__cosim_s14__>*)__xlx_apatb_param_m_axis_session_upd_req)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_s_axis_listen_port_req_stream_buf;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->empty())
    __xlx_apatb_param_s_axis_listen_port_req_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_listen_port_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->write(__xlx_apatb_param_s_axis_listen_port_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_listen_port_req_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->size();
std::vector<__cosim_s4__> __xlx_apatb_param_s_axis_rx_data_req_stream_buf;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_rx_data_req)->empty())
    __xlx_apatb_param_s_axis_rx_data_req_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_rx_data_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_rx_data_req)->write(__xlx_apatb_param_s_axis_rx_data_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rx_data_req_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_rx_data_req)->size();
std::vector<__cosim_s8__> __xlx_apatb_param_s_axis_open_conn_req_stream_buf;
{
  while (!((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_open_conn_req)->empty())
    __xlx_apatb_param_s_axis_open_conn_req_stream_buf.push_back(((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_open_conn_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_open_conn_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_open_conn_req)->write(__xlx_apatb_param_s_axis_open_conn_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_open_conn_req_stream_buf_size = ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_open_conn_req)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_s_axis_close_conn_req_stream_buf;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->empty())
    __xlx_apatb_param_s_axis_close_conn_req_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_close_conn_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->write(__xlx_apatb_param_s_axis_close_conn_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_close_conn_req_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->size();
std::vector<__cosim_s4__> __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->empty())
    __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->write(__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_s_axis_tx_data_req_stream_buf;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tx_data_req)->empty())
    __xlx_apatb_param_s_axis_tx_data_req_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tx_data_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_data_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tx_data_req)->write(__xlx_apatb_param_s_axis_tx_data_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tx_data_req)->size();
std::vector<char> __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf;
long __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_size = ((hls::stream<char>*)__xlx_apatb_param_m_axis_listen_port_rsp)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_m_axis_notification_stream_buf;
long __xlx_apatb_param_m_axis_notification_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_notification)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf;
long __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf;
long __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rx_data_rsp)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf;
long __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf;
long __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tx_data_rsp)->size();
// print axis_data_count Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_axis_data_count, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_axis_data_count);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_axis_data_count, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.axis_data_count_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_axis_data_count, __xlx_sprintf_buffer.data());
}
// print axis_max_data_count Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_axis_max_data_count, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_axis_max_data_count);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_axis_max_data_count, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.axis_max_data_count_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_axis_max_data_count, __xlx_sprintf_buffer.data());
}
// print myIpAddress Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_myIpAddress, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_myIpAddress);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_myIpAddress, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.myIpAddress_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_myIpAddress, __xlx_sprintf_buffer.data());
}
// print regSessionCount Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_regSessionCount, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regSessionCount);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_regSessionCount, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regSessionCount_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_regSessionCount, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
toe_top_hw_stub_wrapper(__xlx_apatb_param_s_axis_tcp_data, __xlx_apatb_param_s_axis_txwrite_sts, __xlx_apatb_param_s_axis_rxread_data, __xlx_apatb_param_s_axis_txread_data, __xlx_apatb_param_m_axis_tcp_data, __xlx_apatb_param_m_axis_txwrite_cmd, __xlx_apatb_param_m_axis_txread_cmd, __xlx_apatb_param_m_axis_rxwrite_data, __xlx_apatb_param_m_axis_txwrite_data, __xlx_apatb_param_s_axis_session_lup_rsp, __xlx_apatb_param_s_axis_session_upd_rsp, __xlx_apatb_param_m_axis_session_lup_req, __xlx_apatb_param_m_axis_session_upd_req, __xlx_apatb_param_s_axis_listen_port_req, __xlx_apatb_param_s_axis_rx_data_req, __xlx_apatb_param_s_axis_open_conn_req, __xlx_apatb_param_s_axis_close_conn_req, __xlx_apatb_param_s_axis_tx_data_req_metadata, __xlx_apatb_param_s_axis_tx_data_req, __xlx_apatb_param_m_axis_listen_port_rsp, __xlx_apatb_param_m_axis_notification, __xlx_apatb_param_m_axis_rx_data_rsp_metadata, __xlx_apatb_param_m_axis_rx_data_rsp, __xlx_apatb_param_m_axis_open_conn_rsp, __xlx_apatb_param_m_axis_tx_data_rsp, __xlx_apatb_param_axis_data_count, __xlx_apatb_param_axis_max_data_count, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_regSessionCount);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size - ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_data)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_s_axis_tcp_data_stream_buf[j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size, &tcl_file.s_axis_tcp_data_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size, &tcl_file.s_axis_tcp_data_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size, &tcl_file.s_axis_tcp_data_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size, &tcl_file.s_axis_tcp_data_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size > 0) {
  long s_axis_tcp_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size > 0) {
  long s_axis_tcp_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size > 0) {
  long s_axis_tcp_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size > 0) {
  long s_axis_tcp_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tcp_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size; j != e; j++) {
    s_axis_tcp_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tcp_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tcp_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size = __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_size - ((hls::stream<__cosim_s5__>*)__xlx_apatb_param_s_axis_txwrite_sts)->size();
// print s_axis_txwrite_sts_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size; j != e; ++j) {
sc_bv<40> __xlx_tmp_lv_hw;
sc_bv<40> __xlx_tmp_lv;
__xlx_tmp_lv = ((long long*)&__xlx_apatb_param_s_axis_txwrite_sts_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size, &tcl_file.s_axis_txwrite_sts_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size > 0) {
  long s_axis_txwrite_sts_V_stream_ingress_size = __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txwrite_sts_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size; j != e; j++) {
    s_axis_txwrite_sts_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txwrite_sts_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txwrite_sts_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txwrite_sts_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txwrite_sts_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txwrite_sts_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size - ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rxread_data)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_s_axis_rxread_data_stream_buf[j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size, &tcl_file.s_axis_rxread_data_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size, &tcl_file.s_axis_rxread_data_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size, &tcl_file.s_axis_rxread_data_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size, &tcl_file.s_axis_rxread_data_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size > 0) {
  long s_axis_rxread_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; j++) {
    s_axis_rxread_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rxread_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size > 0) {
  long s_axis_rxread_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; j++) {
    s_axis_rxread_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rxread_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size > 0) {
  long s_axis_rxread_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; j++) {
    s_axis_rxread_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rxread_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size > 0) {
  long s_axis_rxread_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_rxread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size; j != e; j++) {
    s_axis_rxread_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rxread_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rxread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rxread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rxread_data_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size - ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_txread_data)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_s_axis_txread_data_stream_buf[j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size, &tcl_file.s_axis_txread_data_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size, &tcl_file.s_axis_txread_data_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size, &tcl_file.s_axis_txread_data_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size, &tcl_file.s_axis_txread_data_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size > 0) {
  long s_axis_txread_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; j++) {
    s_axis_txread_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txread_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size > 0) {
  long s_axis_txread_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; j++) {
    s_axis_txread_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txread_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size > 0) {
  long s_axis_txread_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; j++) {
    s_axis_txread_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txread_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_txread_data_stream_buf_final_size > 0) {
  long s_axis_txread_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_txread_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size; j != e; j++) {
    s_axis_txread_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_txread_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_txread_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_txread_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_txread_data_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_data)->size() - __xlx_apatb_param_m_axis_tcp_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_data)->empty())
    __xlx_apatb_param_m_axis_tcp_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_data)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tcp_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_data)->write(__xlx_apatb_param_m_axis_tcp_data_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_m_axis_tcp_data_stream_buf[__xlx_apatb_param_m_axis_tcp_data_stream_buf_size+j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size, &tcl_file.m_axis_tcp_data_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size, &tcl_file.m_axis_tcp_data_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size, &tcl_file.m_axis_tcp_data_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size, &tcl_file.m_axis_tcp_data_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tcp_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tcp_data_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->size() - __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->empty())
    __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->write(__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf[i]);
  }
// print m_axis_txwrite_cmd_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_cmd_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf[__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf[__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_size+j])[0*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_cmd_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size, &tcl_file.m_axis_txwrite_cmd_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_cmd_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_cmd_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_cmd_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->size() - __xlx_apatb_param_m_axis_txread_cmd_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->empty())
    __xlx_apatb_param_m_axis_txread_cmd_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txread_cmd_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->write(__xlx_apatb_param_m_axis_txread_cmd_stream_buf[i]);
  }
// print m_axis_txread_cmd_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txread_cmd_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_txread_cmd_stream_buf[__xlx_apatb_param_m_axis_txread_cmd_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_txread_cmd_stream_buf[__xlx_apatb_param_m_axis_txread_cmd_stream_buf_size+j])[0*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_txread_cmd_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size, &tcl_file.m_axis_txread_cmd_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txread_cmd_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txread_cmd_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txread_cmd_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rxwrite_data)->size() - __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rxwrite_data)->empty())
    __xlx_apatb_param_m_axis_rxwrite_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rxwrite_data)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rxwrite_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rxwrite_data)->write(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_m_axis_rxwrite_data_stream_buf[__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_size+j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size, &tcl_file.m_axis_rxwrite_data_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size, &tcl_file.m_axis_rxwrite_data_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size, &tcl_file.m_axis_rxwrite_data_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size, &tcl_file.m_axis_rxwrite_data_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rxwrite_data_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rxwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rxwrite_data_V_last_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_txwrite_data)->size() - __xlx_apatb_param_m_axis_txwrite_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_txwrite_data)->empty())
    __xlx_apatb_param_m_axis_txwrite_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_txwrite_data)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_txwrite_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_txwrite_data)->write(__xlx_apatb_param_m_axis_txwrite_data_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_m_axis_txwrite_data_stream_buf[__xlx_apatb_param_m_axis_txwrite_data_stream_buf_size+j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size, &tcl_file.m_axis_txwrite_data_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size, &tcl_file.m_axis_txwrite_data_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size, &tcl_file.m_axis_txwrite_data_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size, &tcl_file.m_axis_txwrite_data_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_txwrite_data_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_txwrite_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_txwrite_data_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size = __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->size();
// print s_axis_session_lup_rsp_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv_hw;
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf[j])[0*2+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size, &tcl_file.s_axis_session_lup_rsp_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size > 0) {
  long s_axis_session_lup_rsp_V_stream_ingress_size = __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_lup_rsp_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size; j != e; j++) {
    s_axis_session_lup_rsp_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_lup_rsp_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_session_lup_rsp_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_lup_rsp_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_session_lup_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_lup_rsp_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size = __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_size - ((hls::stream<__cosim_s14__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->size();
// print s_axis_session_upd_rsp_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<160> __xlx_tmp_lv_hw;
sc_bv<160> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[j])[0*2+1];
__xlx_tmp_lv.range(159,128) = ((long long*)&__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf[j])[0*2+2];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size, &tcl_file.s_axis_session_upd_rsp_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size > 0) {
  long s_axis_session_upd_rsp_V_stream_ingress_size = __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_upd_rsp_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size; j != e; j++) {
    s_axis_session_upd_rsp_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_upd_rsp_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_session_upd_rsp_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_session_upd_rsp_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_session_upd_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_session_upd_rsp_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_session_lup_req)->size() - __xlx_apatb_param_m_axis_session_lup_req_stream_buf_size;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_session_lup_req)->empty())
    __xlx_apatb_param_m_axis_session_lup_req_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_session_lup_req)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_session_lup_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_session_lup_req)->write(__xlx_apatb_param_m_axis_session_lup_req_stream_buf[i]);
  }
// print m_axis_session_lup_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_session_lup_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_session_lup_req_stream_buf[__xlx_apatb_param_m_axis_session_lup_req_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_m_axis_session_lup_req_stream_buf[__xlx_apatb_param_m_axis_session_lup_req_stream_buf_size+j])[0*1+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_session_lup_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size, &tcl_file.m_axis_session_lup_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_session_lup_req_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_session_lup_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_lup_req_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size = ((hls::stream<__cosim_s14__>*)__xlx_apatb_param_m_axis_session_upd_req)->size() - __xlx_apatb_param_m_axis_session_upd_req_stream_buf_size;
{
  while (!((hls::stream<__cosim_s14__>*)__xlx_apatb_param_m_axis_session_upd_req)->empty())
    __xlx_apatb_param_m_axis_session_upd_req_stream_buf.push_back(((hls::stream<__cosim_s14__>*)__xlx_apatb_param_m_axis_session_upd_req)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_session_upd_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s14__>*)__xlx_apatb_param_m_axis_session_upd_req)->write(__xlx_apatb_param_m_axis_session_upd_req_stream_buf[i]);
  }
// print m_axis_session_upd_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_session_upd_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size; j != e; ++j) {
sc_bv<160> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_session_upd_req_stream_buf[__xlx_apatb_param_m_axis_session_upd_req_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_session_upd_req_stream_buf[__xlx_apatb_param_m_axis_session_upd_req_stream_buf_size+j])[0*2+1];
__xlx_tmp_lv.range(159,128) = ((long long*)&__xlx_apatb_param_m_axis_session_upd_req_stream_buf[__xlx_apatb_param_m_axis_session_upd_req_stream_buf_size+j])[0*2+2];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_session_upd_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size, &tcl_file.m_axis_session_upd_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_session_upd_req_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_session_upd_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_session_upd_req_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size = __xlx_apatb_param_s_axis_listen_port_req_stream_buf_size - ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->size();
// print s_axis_listen_port_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv_hw;
sc_bv<16> __xlx_tmp_lv;
__xlx_tmp_lv = ((short*)&__xlx_apatb_param_s_axis_listen_port_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size, &tcl_file.s_axis_listen_port_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size > 0) {
  long s_axis_listen_port_req_V_stream_ingress_size = __xlx_apatb_param_s_axis_listen_port_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size; j != e; j++) {
    s_axis_listen_port_req_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_listen_port_req_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_listen_port_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_req_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size = __xlx_apatb_param_s_axis_rx_data_req_stream_buf_size - ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_rx_data_req)->size();
// print s_axis_rx_data_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_s_axis_rx_data_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size, &tcl_file.s_axis_rx_data_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size > 0) {
  long s_axis_rx_data_req_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_req_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_req_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_req_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size = __xlx_apatb_param_s_axis_open_conn_req_stream_buf_size - ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_open_conn_req)->size();
// print s_axis_open_conn_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv_hw;
sc_bv<64> __xlx_tmp_lv;
__xlx_tmp_lv = ((long long*)&__xlx_apatb_param_s_axis_open_conn_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size, &tcl_file.s_axis_open_conn_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size > 0) {
  long s_axis_open_conn_req_V_stream_ingress_size = __xlx_apatb_param_s_axis_open_conn_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_conn_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size; j != e; j++) {
    s_axis_open_conn_req_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_conn_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_open_conn_req_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_conn_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_open_conn_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_conn_req_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size = __xlx_apatb_param_s_axis_close_conn_req_stream_buf_size - ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->size();
// print s_axis_close_conn_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv_hw;
sc_bv<16> __xlx_tmp_lv;
__xlx_tmp_lv = ((short*)&__xlx_apatb_param_s_axis_close_conn_req_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size, &tcl_file.s_axis_close_conn_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size > 0) {
  long s_axis_close_conn_req_V_stream_ingress_size = __xlx_apatb_param_s_axis_close_conn_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_close_conn_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size; j != e; j++) {
    s_axis_close_conn_req_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_close_conn_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_close_conn_req_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_close_conn_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_close_conn_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_close_conn_req_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size = __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_size - ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->size();
// print s_axis_tx_data_req_metadata_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_metadata_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_metadata_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_metadata_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_metadata_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_metadata_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_metadata_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_metadata_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_metadata_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size - ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tx_data_req)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_s_axis_tx_data_req_stream_buf[j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size, &tcl_file.s_axis_tx_data_req_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size > 0) {
  long s_axis_tx_data_req_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size; j != e; j++) {
    s_axis_tx_data_req_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_data_req_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_data_req_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_data_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_data_req_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size = ((hls::stream<char>*)__xlx_apatb_param_m_axis_listen_port_rsp)->size() - __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_size;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_listen_port_rsp)->empty())
    __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_listen_port_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_listen_port_rsp)->write(__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf[i]);
  }
// print m_axis_listen_port_rsp_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)&__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf[__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_rsp_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size, &tcl_file.m_axis_listen_port_rsp_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_rsp_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_listen_port_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_rsp_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_notification_stream_buf_final_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_notification)->size() - __xlx_apatb_param_m_axis_notification_stream_buf_size;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_notification)->empty())
    __xlx_apatb_param_m_axis_notification_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_notification)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_notification_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_notification)->write(__xlx_apatb_param_m_axis_notification_stream_buf[i]);
  }
// print m_axis_notification_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_notification_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_notification_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_notification_stream_buf[__xlx_apatb_param_m_axis_notification_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_m_axis_notification_stream_buf[__xlx_apatb_param_m_axis_notification_stream_buf_size+j])[0*1+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_notification_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_notification_stream_buf_final_size, &tcl_file.m_axis_notification_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_notification_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_notification_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_notification_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_notification_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_notification_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->size() - __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->empty())
    __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->write(__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf[i]);
  }
// print m_axis_rx_data_rsp_metadata_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_metadata_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_metadata_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_metadata_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rx_data_rsp)->size() - __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rx_data_rsp)->empty())
    __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rx_data_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rx_data_rsp)->write(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_size+j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_rx_data_rsp_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_rx_data_rsp_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_rx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_rx_data_rsp_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->size() - __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->empty())
    __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->write(__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf[i]);
  }
// print m_axis_open_conn_rsp_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_open_conn_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf[__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf[__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_size+j])[0*1+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_open_conn_rsp_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size, &tcl_file.m_axis_open_conn_rsp_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_open_conn_rsp_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_open_conn_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_conn_rsp_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tx_data_rsp)->size() - __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tx_data_rsp)->empty())
    __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tx_data_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tx_data_rsp)->write(__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf[i]);
  }
// print m_axis_tx_data_rsp_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf[__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_size+j])[0*1+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_rsp_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size, &tcl_file.m_axis_tx_data_rsp_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_rsp_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_rsp_V, __xlx_sprintf_buffer.data());
}// print regSessionCount Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_regSessionCount, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regSessionCount);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_regSessionCount, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regSessionCount_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_regSessionCount, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
