#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_s_axis_tcp_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tcp_data_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tcp_data_V.dat");
unsigned int ap_apatb_s_axis_txwrite_sts_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_txwrite_sts_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_txwrite_sts_V.dat");
unsigned int ap_apatb_s_axis_rxread_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rxread_data_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rxread_data_V.dat");
unsigned int ap_apatb_s_axis_txread_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_txread_data_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_txread_data_V.dat");
unsigned int ap_apatb_m_axis_tcp_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tcp_data_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tcp_data_V.dat");
unsigned int ap_apatb_m_axis_txwrite_cmd_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_txwrite_cmd_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_txwrite_cmd_V.dat");
unsigned int ap_apatb_m_axis_txread_cmd_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_txread_cmd_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_txread_cmd_V.dat");
unsigned int ap_apatb_m_axis_rxwrite_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_rxwrite_data_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_rxwrite_data_V.dat");
unsigned int ap_apatb_m_axis_txwrite_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_txwrite_data_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_txwrite_data_V.dat");
unsigned int ap_apatb_s_axis_session_lup_rsp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_session_lup_rsp_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_session_lup_rsp_V.dat");
unsigned int ap_apatb_s_axis_session_upd_rsp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_session_upd_rsp_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_session_upd_rsp_V.dat");
unsigned int ap_apatb_m_axis_session_lup_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_session_lup_req_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_session_lup_req_V.dat");
unsigned int ap_apatb_m_axis_session_upd_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_session_upd_req_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_session_upd_req_V.dat");
unsigned int ap_apatb_s_axis_listen_port_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_listen_port_req_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_listen_port_req_V.dat");
unsigned int ap_apatb_s_axis_rx_data_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rx_data_req_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rx_data_req_V.dat");
unsigned int ap_apatb_s_axis_open_conn_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_open_conn_req_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_open_conn_req_V.dat");
unsigned int ap_apatb_s_axis_close_conn_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_close_conn_req_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_close_conn_req_V.dat");
unsigned int ap_apatb_s_axis_tx_data_req_metadata_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tx_data_req_metadata_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tx_data_req_metadata_V.dat");
unsigned int ap_apatb_s_axis_tx_data_req_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tx_data_req_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tx_data_req_V.dat");
unsigned int ap_apatb_m_axis_listen_port_rsp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_listen_port_rsp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_listen_port_rsp_V.dat");
unsigned int ap_apatb_m_axis_notification_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_notification_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_notification_V.dat");
unsigned int ap_apatb_m_axis_rx_data_rsp_metadata_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_rx_data_rsp_metadata_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_metadata_V.dat");
unsigned int ap_apatb_m_axis_rx_data_rsp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_rx_data_rsp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_rx_data_rsp_V.dat");
unsigned int ap_apatb_m_axis_open_conn_rsp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_open_conn_rsp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_open_conn_rsp_V.dat");
unsigned int ap_apatb_m_axis_tx_data_rsp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_data_rsp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_data_rsp_V.dat");
struct __cosim_s80__ { char data[128]; };
struct __cosim_s5__ { char data[5]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s14__ { char data[20]; };
struct __cosim_sC__ { char data[12]; };
struct __cosim_s2__ { char data[2]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s40__ { char data[64]; };
extern "C" void toe_top(__cosim_s80__*, __cosim_s5__*, __cosim_s80__*, __cosim_s80__*, __cosim_s80__*, __cosim_s10__*, __cosim_s10__*, __cosim_s80__*, __cosim_s80__*, __cosim_s10__*, __cosim_s14__*, __cosim_sC__*, __cosim_s14__*, __cosim_s2__*, __cosim_s4__*, __cosim_s8__*, __cosim_s2__*, __cosim_s4__*, __cosim_s80__*, char*, __cosim_sC__*, __cosim_s2__*, __cosim_s80__*, __cosim_sC__*, __cosim_sC__*, __cosim_s2__, __cosim_s2__, __cosim_s4__, volatile void *);
extern "C" void apatb_toe_top_hw(volatile void * __xlx_apatb_param_s_axis_tcp_data, volatile void * __xlx_apatb_param_s_axis_txwrite_sts, volatile void * __xlx_apatb_param_s_axis_rxread_data, volatile void * __xlx_apatb_param_s_axis_txread_data, volatile void * __xlx_apatb_param_m_axis_tcp_data, volatile void * __xlx_apatb_param_m_axis_txwrite_cmd, volatile void * __xlx_apatb_param_m_axis_txread_cmd, volatile void * __xlx_apatb_param_m_axis_rxwrite_data, volatile void * __xlx_apatb_param_m_axis_txwrite_data, volatile void * __xlx_apatb_param_s_axis_session_lup_rsp, volatile void * __xlx_apatb_param_s_axis_session_upd_rsp, volatile void * __xlx_apatb_param_m_axis_session_lup_req, volatile void * __xlx_apatb_param_m_axis_session_upd_req, volatile void * __xlx_apatb_param_s_axis_listen_port_req, volatile void * __xlx_apatb_param_s_axis_rx_data_req, volatile void * __xlx_apatb_param_s_axis_open_conn_req, volatile void * __xlx_apatb_param_s_axis_close_conn_req, volatile void * __xlx_apatb_param_s_axis_tx_data_req_metadata, volatile void * __xlx_apatb_param_s_axis_tx_data_req, volatile void * __xlx_apatb_param_m_axis_listen_port_rsp, volatile void * __xlx_apatb_param_m_axis_notification, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp_metadata, volatile void * __xlx_apatb_param_m_axis_rx_data_rsp, volatile void * __xlx_apatb_param_m_axis_open_conn_rsp, volatile void * __xlx_apatb_param_m_axis_tx_data_rsp, __cosim_s2__ __xlx_apatb_param_axis_data_count, __cosim_s2__ __xlx_apatb_param_axis_max_data_count, __cosim_s4__ __xlx_apatb_param_myIpAddress, volatile void * __xlx_apatb_param_regSessionCount) {
  // collect __xlx_s_axis_tcp_data_tmp_vec
  unsigned __xlx_s_axis_tcp_data_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tcp_data_V_read_Size = __xlx_s_axis_tcp_data_V_size_Reader.read_size();
  vector<__cosim_s80__> __xlx_s_axis_tcp_data_tmp_vec;
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_data)->empty() && __xlx_s_axis_tcp_data_V_tmp_Count < __xlx_s_axis_tcp_data_V_read_Size) {
    __xlx_s_axis_tcp_data_tmp_vec.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tcp_data)->read());
    __xlx_s_axis_tcp_data_V_tmp_Count++;
  }
  ap_apatb_s_axis_tcp_data_V_cap_bc = __xlx_s_axis_tcp_data_tmp_vec.size();
  // store input buffer
  __cosim_s80__* __xlx_s_axis_tcp_data_input_buffer= new __cosim_s80__[__xlx_s_axis_tcp_data_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tcp_data_tmp_vec.size(); ++i) {
    __xlx_s_axis_tcp_data_input_buffer[i] = __xlx_s_axis_tcp_data_tmp_vec[i];
  }
  // collect __xlx_s_axis_txwrite_sts_tmp_vec
  unsigned __xlx_s_axis_txwrite_sts_V_tmp_Count = 0;
  unsigned __xlx_s_axis_txwrite_sts_V_read_Size = __xlx_s_axis_txwrite_sts_V_size_Reader.read_size();
  vector<__cosim_s5__> __xlx_s_axis_txwrite_sts_tmp_vec;
  while (!((hls::stream<__cosim_s5__>*)__xlx_apatb_param_s_axis_txwrite_sts)->empty() && __xlx_s_axis_txwrite_sts_V_tmp_Count < __xlx_s_axis_txwrite_sts_V_read_Size) {
    __xlx_s_axis_txwrite_sts_tmp_vec.push_back(((hls::stream<__cosim_s5__>*)__xlx_apatb_param_s_axis_txwrite_sts)->read());
    __xlx_s_axis_txwrite_sts_V_tmp_Count++;
  }
  ap_apatb_s_axis_txwrite_sts_V_cap_bc = __xlx_s_axis_txwrite_sts_tmp_vec.size();
  // store input buffer
  __cosim_s5__* __xlx_s_axis_txwrite_sts_input_buffer= new __cosim_s5__[__xlx_s_axis_txwrite_sts_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_txwrite_sts_tmp_vec.size(); ++i) {
    __xlx_s_axis_txwrite_sts_input_buffer[i] = __xlx_s_axis_txwrite_sts_tmp_vec[i];
  }
  // collect __xlx_s_axis_rxread_data_tmp_vec
  unsigned __xlx_s_axis_rxread_data_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rxread_data_V_read_Size = __xlx_s_axis_rxread_data_V_size_Reader.read_size();
  vector<__cosim_s80__> __xlx_s_axis_rxread_data_tmp_vec;
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rxread_data)->empty() && __xlx_s_axis_rxread_data_V_tmp_Count < __xlx_s_axis_rxread_data_V_read_Size) {
    __xlx_s_axis_rxread_data_tmp_vec.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rxread_data)->read());
    __xlx_s_axis_rxread_data_V_tmp_Count++;
  }
  ap_apatb_s_axis_rxread_data_V_cap_bc = __xlx_s_axis_rxread_data_tmp_vec.size();
  // store input buffer
  __cosim_s80__* __xlx_s_axis_rxread_data_input_buffer= new __cosim_s80__[__xlx_s_axis_rxread_data_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rxread_data_tmp_vec.size(); ++i) {
    __xlx_s_axis_rxread_data_input_buffer[i] = __xlx_s_axis_rxread_data_tmp_vec[i];
  }
  // collect __xlx_s_axis_txread_data_tmp_vec
  unsigned __xlx_s_axis_txread_data_V_tmp_Count = 0;
  unsigned __xlx_s_axis_txread_data_V_read_Size = __xlx_s_axis_txread_data_V_size_Reader.read_size();
  vector<__cosim_s80__> __xlx_s_axis_txread_data_tmp_vec;
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_txread_data)->empty() && __xlx_s_axis_txread_data_V_tmp_Count < __xlx_s_axis_txread_data_V_read_Size) {
    __xlx_s_axis_txread_data_tmp_vec.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_txread_data)->read());
    __xlx_s_axis_txread_data_V_tmp_Count++;
  }
  ap_apatb_s_axis_txread_data_V_cap_bc = __xlx_s_axis_txread_data_tmp_vec.size();
  // store input buffer
  __cosim_s80__* __xlx_s_axis_txread_data_input_buffer= new __cosim_s80__[__xlx_s_axis_txread_data_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_txread_data_tmp_vec.size(); ++i) {
    __xlx_s_axis_txread_data_input_buffer[i] = __xlx_s_axis_txread_data_tmp_vec[i];
  }
  //Create input buffer for m_axis_tcp_data
  ap_apatb_m_axis_tcp_data_V_cap_bc = __xlx_m_axis_tcp_data_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_tcp_data_input_buffer= new __cosim_s80__[ap_apatb_m_axis_tcp_data_V_cap_bc];
  //Create input buffer for m_axis_txwrite_cmd
  ap_apatb_m_axis_txwrite_cmd_V_cap_bc = __xlx_m_axis_txwrite_cmd_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_txwrite_cmd_input_buffer= new __cosim_s10__[ap_apatb_m_axis_txwrite_cmd_V_cap_bc];
  //Create input buffer for m_axis_txread_cmd
  ap_apatb_m_axis_txread_cmd_V_cap_bc = __xlx_m_axis_txread_cmd_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_txread_cmd_input_buffer= new __cosim_s10__[ap_apatb_m_axis_txread_cmd_V_cap_bc];
  //Create input buffer for m_axis_rxwrite_data
  ap_apatb_m_axis_rxwrite_data_V_cap_bc = __xlx_m_axis_rxwrite_data_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_rxwrite_data_input_buffer= new __cosim_s80__[ap_apatb_m_axis_rxwrite_data_V_cap_bc];
  //Create input buffer for m_axis_txwrite_data
  ap_apatb_m_axis_txwrite_data_V_cap_bc = __xlx_m_axis_txwrite_data_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_txwrite_data_input_buffer= new __cosim_s80__[ap_apatb_m_axis_txwrite_data_V_cap_bc];
  // collect __xlx_s_axis_session_lup_rsp_tmp_vec
  unsigned __xlx_s_axis_session_lup_rsp_V_tmp_Count = 0;
  unsigned __xlx_s_axis_session_lup_rsp_V_read_Size = __xlx_s_axis_session_lup_rsp_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_s_axis_session_lup_rsp_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->empty() && __xlx_s_axis_session_lup_rsp_V_tmp_Count < __xlx_s_axis_session_lup_rsp_V_read_Size) {
    __xlx_s_axis_session_lup_rsp_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_session_lup_rsp)->read());
    __xlx_s_axis_session_lup_rsp_V_tmp_Count++;
  }
  ap_apatb_s_axis_session_lup_rsp_V_cap_bc = __xlx_s_axis_session_lup_rsp_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_s_axis_session_lup_rsp_input_buffer= new __cosim_s10__[__xlx_s_axis_session_lup_rsp_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_session_lup_rsp_tmp_vec.size(); ++i) {
    __xlx_s_axis_session_lup_rsp_input_buffer[i] = __xlx_s_axis_session_lup_rsp_tmp_vec[i];
  }
  // collect __xlx_s_axis_session_upd_rsp_tmp_vec
  unsigned __xlx_s_axis_session_upd_rsp_V_tmp_Count = 0;
  unsigned __xlx_s_axis_session_upd_rsp_V_read_Size = __xlx_s_axis_session_upd_rsp_V_size_Reader.read_size();
  vector<__cosim_s14__> __xlx_s_axis_session_upd_rsp_tmp_vec;
  while (!((hls::stream<__cosim_s14__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->empty() && __xlx_s_axis_session_upd_rsp_V_tmp_Count < __xlx_s_axis_session_upd_rsp_V_read_Size) {
    __xlx_s_axis_session_upd_rsp_tmp_vec.push_back(((hls::stream<__cosim_s14__>*)__xlx_apatb_param_s_axis_session_upd_rsp)->read());
    __xlx_s_axis_session_upd_rsp_V_tmp_Count++;
  }
  ap_apatb_s_axis_session_upd_rsp_V_cap_bc = __xlx_s_axis_session_upd_rsp_tmp_vec.size();
  // store input buffer
  __cosim_s14__* __xlx_s_axis_session_upd_rsp_input_buffer= new __cosim_s14__[__xlx_s_axis_session_upd_rsp_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_session_upd_rsp_tmp_vec.size(); ++i) {
    __xlx_s_axis_session_upd_rsp_input_buffer[i] = __xlx_s_axis_session_upd_rsp_tmp_vec[i];
  }
  //Create input buffer for m_axis_session_lup_req
  ap_apatb_m_axis_session_lup_req_V_cap_bc = __xlx_m_axis_session_lup_req_V_size_Reader.read_size();
  __cosim_sC__* __xlx_m_axis_session_lup_req_input_buffer= new __cosim_sC__[ap_apatb_m_axis_session_lup_req_V_cap_bc];
  //Create input buffer for m_axis_session_upd_req
  ap_apatb_m_axis_session_upd_req_V_cap_bc = __xlx_m_axis_session_upd_req_V_size_Reader.read_size();
  __cosim_s14__* __xlx_m_axis_session_upd_req_input_buffer= new __cosim_s14__[ap_apatb_m_axis_session_upd_req_V_cap_bc];
  // collect __xlx_s_axis_listen_port_req_tmp_vec
  unsigned __xlx_s_axis_listen_port_req_V_tmp_Count = 0;
  unsigned __xlx_s_axis_listen_port_req_V_read_Size = __xlx_s_axis_listen_port_req_V_size_Reader.read_size();
  vector<__cosim_s2__> __xlx_s_axis_listen_port_req_tmp_vec;
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->empty() && __xlx_s_axis_listen_port_req_V_tmp_Count < __xlx_s_axis_listen_port_req_V_read_Size) {
    __xlx_s_axis_listen_port_req_tmp_vec.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_listen_port_req)->read());
    __xlx_s_axis_listen_port_req_V_tmp_Count++;
  }
  ap_apatb_s_axis_listen_port_req_V_cap_bc = __xlx_s_axis_listen_port_req_tmp_vec.size();
  // store input buffer
  __cosim_s2__* __xlx_s_axis_listen_port_req_input_buffer= new __cosim_s2__[__xlx_s_axis_listen_port_req_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_listen_port_req_tmp_vec.size(); ++i) {
    __xlx_s_axis_listen_port_req_input_buffer[i] = __xlx_s_axis_listen_port_req_tmp_vec[i];
  }
  // collect __xlx_s_axis_rx_data_req_tmp_vec
  unsigned __xlx_s_axis_rx_data_req_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rx_data_req_V_read_Size = __xlx_s_axis_rx_data_req_V_size_Reader.read_size();
  vector<__cosim_s4__> __xlx_s_axis_rx_data_req_tmp_vec;
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_rx_data_req)->empty() && __xlx_s_axis_rx_data_req_V_tmp_Count < __xlx_s_axis_rx_data_req_V_read_Size) {
    __xlx_s_axis_rx_data_req_tmp_vec.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_rx_data_req)->read());
    __xlx_s_axis_rx_data_req_V_tmp_Count++;
  }
  ap_apatb_s_axis_rx_data_req_V_cap_bc = __xlx_s_axis_rx_data_req_tmp_vec.size();
  // store input buffer
  __cosim_s4__* __xlx_s_axis_rx_data_req_input_buffer= new __cosim_s4__[__xlx_s_axis_rx_data_req_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rx_data_req_tmp_vec.size(); ++i) {
    __xlx_s_axis_rx_data_req_input_buffer[i] = __xlx_s_axis_rx_data_req_tmp_vec[i];
  }
  // collect __xlx_s_axis_open_conn_req_tmp_vec
  unsigned __xlx_s_axis_open_conn_req_V_tmp_Count = 0;
  unsigned __xlx_s_axis_open_conn_req_V_read_Size = __xlx_s_axis_open_conn_req_V_size_Reader.read_size();
  vector<__cosim_s8__> __xlx_s_axis_open_conn_req_tmp_vec;
  while (!((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_open_conn_req)->empty() && __xlx_s_axis_open_conn_req_V_tmp_Count < __xlx_s_axis_open_conn_req_V_read_Size) {
    __xlx_s_axis_open_conn_req_tmp_vec.push_back(((hls::stream<__cosim_s8__>*)__xlx_apatb_param_s_axis_open_conn_req)->read());
    __xlx_s_axis_open_conn_req_V_tmp_Count++;
  }
  ap_apatb_s_axis_open_conn_req_V_cap_bc = __xlx_s_axis_open_conn_req_tmp_vec.size();
  // store input buffer
  __cosim_s8__* __xlx_s_axis_open_conn_req_input_buffer= new __cosim_s8__[__xlx_s_axis_open_conn_req_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_open_conn_req_tmp_vec.size(); ++i) {
    __xlx_s_axis_open_conn_req_input_buffer[i] = __xlx_s_axis_open_conn_req_tmp_vec[i];
  }
  // collect __xlx_s_axis_close_conn_req_tmp_vec
  unsigned __xlx_s_axis_close_conn_req_V_tmp_Count = 0;
  unsigned __xlx_s_axis_close_conn_req_V_read_Size = __xlx_s_axis_close_conn_req_V_size_Reader.read_size();
  vector<__cosim_s2__> __xlx_s_axis_close_conn_req_tmp_vec;
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->empty() && __xlx_s_axis_close_conn_req_V_tmp_Count < __xlx_s_axis_close_conn_req_V_read_Size) {
    __xlx_s_axis_close_conn_req_tmp_vec.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_close_conn_req)->read());
    __xlx_s_axis_close_conn_req_V_tmp_Count++;
  }
  ap_apatb_s_axis_close_conn_req_V_cap_bc = __xlx_s_axis_close_conn_req_tmp_vec.size();
  // store input buffer
  __cosim_s2__* __xlx_s_axis_close_conn_req_input_buffer= new __cosim_s2__[__xlx_s_axis_close_conn_req_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_close_conn_req_tmp_vec.size(); ++i) {
    __xlx_s_axis_close_conn_req_input_buffer[i] = __xlx_s_axis_close_conn_req_tmp_vec[i];
  }
  // collect __xlx_s_axis_tx_data_req_metadata_tmp_vec
  unsigned __xlx_s_axis_tx_data_req_metadata_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tx_data_req_metadata_V_read_Size = __xlx_s_axis_tx_data_req_metadata_V_size_Reader.read_size();
  vector<__cosim_s4__> __xlx_s_axis_tx_data_req_metadata_tmp_vec;
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->empty() && __xlx_s_axis_tx_data_req_metadata_V_tmp_Count < __xlx_s_axis_tx_data_req_metadata_V_read_Size) {
    __xlx_s_axis_tx_data_req_metadata_tmp_vec.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_tx_data_req_metadata)->read());
    __xlx_s_axis_tx_data_req_metadata_V_tmp_Count++;
  }
  ap_apatb_s_axis_tx_data_req_metadata_V_cap_bc = __xlx_s_axis_tx_data_req_metadata_tmp_vec.size();
  // store input buffer
  __cosim_s4__* __xlx_s_axis_tx_data_req_metadata_input_buffer= new __cosim_s4__[__xlx_s_axis_tx_data_req_metadata_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tx_data_req_metadata_tmp_vec.size(); ++i) {
    __xlx_s_axis_tx_data_req_metadata_input_buffer[i] = __xlx_s_axis_tx_data_req_metadata_tmp_vec[i];
  }
  // collect __xlx_s_axis_tx_data_req_tmp_vec
  unsigned __xlx_s_axis_tx_data_req_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tx_data_req_V_read_Size = __xlx_s_axis_tx_data_req_V_size_Reader.read_size();
  vector<__cosim_s80__> __xlx_s_axis_tx_data_req_tmp_vec;
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tx_data_req)->empty() && __xlx_s_axis_tx_data_req_V_tmp_Count < __xlx_s_axis_tx_data_req_V_read_Size) {
    __xlx_s_axis_tx_data_req_tmp_vec.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_tx_data_req)->read());
    __xlx_s_axis_tx_data_req_V_tmp_Count++;
  }
  ap_apatb_s_axis_tx_data_req_V_cap_bc = __xlx_s_axis_tx_data_req_tmp_vec.size();
  // store input buffer
  __cosim_s80__* __xlx_s_axis_tx_data_req_input_buffer= new __cosim_s80__[__xlx_s_axis_tx_data_req_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tx_data_req_tmp_vec.size(); ++i) {
    __xlx_s_axis_tx_data_req_input_buffer[i] = __xlx_s_axis_tx_data_req_tmp_vec[i];
  }
  //Create input buffer for m_axis_listen_port_rsp
  ap_apatb_m_axis_listen_port_rsp_V_cap_bc = __xlx_m_axis_listen_port_rsp_V_size_Reader.read_size();
  char* __xlx_m_axis_listen_port_rsp_input_buffer= new char[ap_apatb_m_axis_listen_port_rsp_V_cap_bc];
  //Create input buffer for m_axis_notification
  ap_apatb_m_axis_notification_V_cap_bc = __xlx_m_axis_notification_V_size_Reader.read_size();
  __cosim_sC__* __xlx_m_axis_notification_input_buffer= new __cosim_sC__[ap_apatb_m_axis_notification_V_cap_bc];
  //Create input buffer for m_axis_rx_data_rsp_metadata
  ap_apatb_m_axis_rx_data_rsp_metadata_V_cap_bc = __xlx_m_axis_rx_data_rsp_metadata_V_size_Reader.read_size();
  __cosim_s2__* __xlx_m_axis_rx_data_rsp_metadata_input_buffer= new __cosim_s2__[ap_apatb_m_axis_rx_data_rsp_metadata_V_cap_bc];
  //Create input buffer for m_axis_rx_data_rsp
  ap_apatb_m_axis_rx_data_rsp_V_cap_bc = __xlx_m_axis_rx_data_rsp_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_rx_data_rsp_input_buffer= new __cosim_s80__[ap_apatb_m_axis_rx_data_rsp_V_cap_bc];
  //Create input buffer for m_axis_open_conn_rsp
  ap_apatb_m_axis_open_conn_rsp_V_cap_bc = __xlx_m_axis_open_conn_rsp_V_size_Reader.read_size();
  __cosim_sC__* __xlx_m_axis_open_conn_rsp_input_buffer= new __cosim_sC__[ap_apatb_m_axis_open_conn_rsp_V_cap_bc];
  //Create input buffer for m_axis_tx_data_rsp
  ap_apatb_m_axis_tx_data_rsp_V_cap_bc = __xlx_m_axis_tx_data_rsp_V_size_Reader.read_size();
  __cosim_sC__* __xlx_m_axis_tx_data_rsp_input_buffer= new __cosim_sC__[ap_apatb_m_axis_tx_data_rsp_V_cap_bc];
  // DUT call
  toe_top(__xlx_s_axis_tcp_data_input_buffer, __xlx_s_axis_txwrite_sts_input_buffer, __xlx_s_axis_rxread_data_input_buffer, __xlx_s_axis_txread_data_input_buffer, __xlx_m_axis_tcp_data_input_buffer, __xlx_m_axis_txwrite_cmd_input_buffer, __xlx_m_axis_txread_cmd_input_buffer, __xlx_m_axis_rxwrite_data_input_buffer, __xlx_m_axis_txwrite_data_input_buffer, __xlx_s_axis_session_lup_rsp_input_buffer, __xlx_s_axis_session_upd_rsp_input_buffer, __xlx_m_axis_session_lup_req_input_buffer, __xlx_m_axis_session_upd_req_input_buffer, __xlx_s_axis_listen_port_req_input_buffer, __xlx_s_axis_rx_data_req_input_buffer, __xlx_s_axis_open_conn_req_input_buffer, __xlx_s_axis_close_conn_req_input_buffer, __xlx_s_axis_tx_data_req_metadata_input_buffer, __xlx_s_axis_tx_data_req_input_buffer, __xlx_m_axis_listen_port_rsp_input_buffer, __xlx_m_axis_notification_input_buffer, __xlx_m_axis_rx_data_rsp_metadata_input_buffer, __xlx_m_axis_rx_data_rsp_input_buffer, __xlx_m_axis_open_conn_rsp_input_buffer, __xlx_m_axis_tx_data_rsp_input_buffer, __xlx_apatb_param_axis_data_count, __xlx_apatb_param_axis_max_data_count, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_regSessionCount);
  for (unsigned i = 0; i <ap_apatb_m_axis_tcp_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp_data)->write(__xlx_m_axis_tcp_data_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_txwrite_cmd_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txwrite_cmd)->write(__xlx_m_axis_txwrite_cmd_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_txread_cmd_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_txread_cmd)->write(__xlx_m_axis_txread_cmd_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_rxwrite_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rxwrite_data)->write(__xlx_m_axis_rxwrite_data_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_txwrite_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_txwrite_data)->write(__xlx_m_axis_txwrite_data_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_session_lup_req_V_cap_bc; ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_session_lup_req)->write(__xlx_m_axis_session_lup_req_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_session_upd_req_V_cap_bc; ++i)
    ((hls::stream<__cosim_s14__>*)__xlx_apatb_param_m_axis_session_upd_req)->write(__xlx_m_axis_session_upd_req_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_listen_port_rsp_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_listen_port_rsp)->write(__xlx_m_axis_listen_port_rsp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_notification_V_cap_bc; ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_notification)->write(__xlx_m_axis_notification_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_rx_data_rsp_metadata_V_cap_bc; ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_rx_data_rsp_metadata)->write(__xlx_m_axis_rx_data_rsp_metadata_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_rx_data_rsp_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_rx_data_rsp)->write(__xlx_m_axis_rx_data_rsp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_open_conn_rsp_V_cap_bc; ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_open_conn_rsp)->write(__xlx_m_axis_open_conn_rsp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_data_rsp_V_cap_bc; ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_m_axis_tx_data_rsp)->write(__xlx_m_axis_tx_data_rsp_input_buffer[i]);
}
