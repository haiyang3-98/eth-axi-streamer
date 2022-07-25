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
unsigned int ap_apatb_m_axis_open_port_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_open_port_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_open_port_V.dat");
unsigned int ap_apatb_s_axis_open_port_status_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_open_port_status_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_open_port_status_V.dat");
unsigned int ap_apatb_s_axis_rx_metadata_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rx_metadata_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rx_metadata_V.dat");
unsigned int ap_apatb_s_axis_rx_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rx_data_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rx_data_V.dat");
unsigned int ap_apatb_m_axis_tx_metadata_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_metadata_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_metadata_V.dat");
unsigned int ap_apatb_m_axis_tx_length_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_length_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_length_V.dat");
unsigned int ap_apatb_m_axis_tx_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_data_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_data_V.dat");
struct __cosim_s2__ { char data[2]; };
struct __cosim_s10__ { char data[16]; };
extern "C" void dhcp_client(__cosim_s2__*, char*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s2__*, __cosim_s10__*, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_dhcp_client_hw(volatile void * __xlx_apatb_param_m_axis_open_port, volatile void * __xlx_apatb_param_s_axis_open_port_status, volatile void * __xlx_apatb_param_s_axis_rx_metadata, volatile void * __xlx_apatb_param_s_axis_rx_data, volatile void * __xlx_apatb_param_m_axis_tx_metadata, volatile void * __xlx_apatb_param_m_axis_tx_length, volatile void * __xlx_apatb_param_m_axis_tx_data, volatile void * __xlx_apatb_param_dhcpEnable, volatile void * __xlx_apatb_param_inputIpAddress, volatile void * __xlx_apatb_param_dhcpIpAddressOut, volatile void * __xlx_apatb_param_myMacAddress) {
  //Create input buffer for m_axis_open_port
  ap_apatb_m_axis_open_port_V_cap_bc = __xlx_m_axis_open_port_V_size_Reader.read_size();
  __cosim_s2__* __xlx_m_axis_open_port_input_buffer= new __cosim_s2__[ap_apatb_m_axis_open_port_V_cap_bc];
  // collect __xlx_s_axis_open_port_status_tmp_vec
  unsigned __xlx_s_axis_open_port_status_V_tmp_Count = 0;
  unsigned __xlx_s_axis_open_port_status_V_read_Size = __xlx_s_axis_open_port_status_V_size_Reader.read_size();
  vector<char> __xlx_s_axis_open_port_status_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_open_port_status)->empty() && __xlx_s_axis_open_port_status_V_tmp_Count < __xlx_s_axis_open_port_status_V_read_Size) {
    __xlx_s_axis_open_port_status_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_open_port_status)->read());
    __xlx_s_axis_open_port_status_V_tmp_Count++;
  }
  ap_apatb_s_axis_open_port_status_V_cap_bc = __xlx_s_axis_open_port_status_tmp_vec.size();
  // store input buffer
  char* __xlx_s_axis_open_port_status_input_buffer= new char[__xlx_s_axis_open_port_status_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_open_port_status_tmp_vec.size(); ++i) {
    __xlx_s_axis_open_port_status_input_buffer[i] = __xlx_s_axis_open_port_status_tmp_vec[i];
  }
  // collect __xlx_s_axis_rx_metadata_tmp_vec
  unsigned __xlx_s_axis_rx_metadata_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rx_metadata_V_read_Size = __xlx_s_axis_rx_metadata_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_s_axis_rx_metadata_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_metadata)->empty() && __xlx_s_axis_rx_metadata_V_tmp_Count < __xlx_s_axis_rx_metadata_V_read_Size) {
    __xlx_s_axis_rx_metadata_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_metadata)->read());
    __xlx_s_axis_rx_metadata_V_tmp_Count++;
  }
  ap_apatb_s_axis_rx_metadata_V_cap_bc = __xlx_s_axis_rx_metadata_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_s_axis_rx_metadata_input_buffer= new __cosim_s10__[__xlx_s_axis_rx_metadata_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rx_metadata_tmp_vec.size(); ++i) {
    __xlx_s_axis_rx_metadata_input_buffer[i] = __xlx_s_axis_rx_metadata_tmp_vec[i];
  }
  // collect __xlx_s_axis_rx_data_tmp_vec
  unsigned __xlx_s_axis_rx_data_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rx_data_V_read_Size = __xlx_s_axis_rx_data_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_s_axis_rx_data_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_data)->empty() && __xlx_s_axis_rx_data_V_tmp_Count < __xlx_s_axis_rx_data_V_read_Size) {
    __xlx_s_axis_rx_data_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_data)->read());
    __xlx_s_axis_rx_data_V_tmp_Count++;
  }
  ap_apatb_s_axis_rx_data_V_cap_bc = __xlx_s_axis_rx_data_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_s_axis_rx_data_input_buffer= new __cosim_s10__[__xlx_s_axis_rx_data_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rx_data_tmp_vec.size(); ++i) {
    __xlx_s_axis_rx_data_input_buffer[i] = __xlx_s_axis_rx_data_tmp_vec[i];
  }
  //Create input buffer for m_axis_tx_metadata
  ap_apatb_m_axis_tx_metadata_V_cap_bc = __xlx_m_axis_tx_metadata_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_tx_metadata_input_buffer= new __cosim_s10__[ap_apatb_m_axis_tx_metadata_V_cap_bc];
  //Create input buffer for m_axis_tx_length
  ap_apatb_m_axis_tx_length_V_cap_bc = __xlx_m_axis_tx_length_V_size_Reader.read_size();
  __cosim_s2__* __xlx_m_axis_tx_length_input_buffer= new __cosim_s2__[ap_apatb_m_axis_tx_length_V_cap_bc];
  //Create input buffer for m_axis_tx_data
  ap_apatb_m_axis_tx_data_V_cap_bc = __xlx_m_axis_tx_data_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_tx_data_input_buffer= new __cosim_s10__[ap_apatb_m_axis_tx_data_V_cap_bc];
  // DUT call
  dhcp_client(__xlx_m_axis_open_port_input_buffer, __xlx_s_axis_open_port_status_input_buffer, __xlx_s_axis_rx_metadata_input_buffer, __xlx_s_axis_rx_data_input_buffer, __xlx_m_axis_tx_metadata_input_buffer, __xlx_m_axis_tx_length_input_buffer, __xlx_m_axis_tx_data_input_buffer, __xlx_apatb_param_dhcpEnable, __xlx_apatb_param_inputIpAddress, __xlx_apatb_param_dhcpIpAddressOut, __xlx_apatb_param_myMacAddress);
  for (unsigned i = 0; i <ap_apatb_m_axis_open_port_V_cap_bc; ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_open_port)->write(__xlx_m_axis_open_port_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_metadata_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tx_metadata)->write(__xlx_m_axis_tx_metadata_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_length_V_cap_bc; ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_tx_length)->write(__xlx_m_axis_tx_length_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tx_data)->write(__xlx_m_axis_tx_data_input_buffer[i]);
}
