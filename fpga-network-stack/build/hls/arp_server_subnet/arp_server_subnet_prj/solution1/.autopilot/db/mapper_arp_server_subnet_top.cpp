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
unsigned int ap_apatb_s_axis_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_V.dat");
unsigned int ap_apatb_s_axis_arp_lookup_request_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_arp_lookup_request_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_arp_lookup_request_V.dat");
unsigned int ap_apatb_s_axis_host_arp_lookup_request_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_host_arp_lookup_request_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_host_arp_lookup_request_V.dat");
unsigned int ap_apatb_m_axis_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_V.dat");
unsigned int ap_apatb_m_axis_arp_lookup_reply_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_arp_lookup_reply_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_arp_lookup_reply_V.dat");
unsigned int ap_apatb_m_axis_host_arp_lookup_reply_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_host_arp_lookup_reply_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_host_arp_lookup_reply_V.dat");
struct __cosim_s10__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
extern "C" void arp_server_subnet_top(__cosim_s10__*, __cosim_s4__*, __cosim_s4__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s8__, __cosim_s4__, volatile void *, volatile void *);
extern "C" void apatb_arp_server_subnet_top_hw(volatile void * __xlx_apatb_param_s_axis, volatile void * __xlx_apatb_param_s_axis_arp_lookup_request, volatile void * __xlx_apatb_param_s_axis_host_arp_lookup_request, volatile void * __xlx_apatb_param_m_axis, volatile void * __xlx_apatb_param_m_axis_arp_lookup_reply, volatile void * __xlx_apatb_param_m_axis_host_arp_lookup_reply, __cosim_s8__ __xlx_apatb_param_myMacAddress, __cosim_s4__ __xlx_apatb_param_myIpAddress, volatile void * __xlx_apatb_param_regRequestCount, volatile void * __xlx_apatb_param_regReplyCount) {
  // collect __xlx_s_axis_tmp_vec
  unsigned __xlx_s_axis_V_tmp_Count = 0;
  unsigned __xlx_s_axis_V_read_Size = __xlx_s_axis_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_s_axis_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->empty() && __xlx_s_axis_V_tmp_Count < __xlx_s_axis_V_read_Size) {
    __xlx_s_axis_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->read());
    __xlx_s_axis_V_tmp_Count++;
  }
  ap_apatb_s_axis_V_cap_bc = __xlx_s_axis_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_s_axis_input_buffer= new __cosim_s10__[__xlx_s_axis_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tmp_vec.size(); ++i) {
    __xlx_s_axis_input_buffer[i] = __xlx_s_axis_tmp_vec[i];
  }
  // collect __xlx_s_axis_arp_lookup_request_tmp_vec
  unsigned __xlx_s_axis_arp_lookup_request_V_tmp_Count = 0;
  unsigned __xlx_s_axis_arp_lookup_request_V_read_Size = __xlx_s_axis_arp_lookup_request_V_size_Reader.read_size();
  vector<__cosim_s4__> __xlx_s_axis_arp_lookup_request_tmp_vec;
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_arp_lookup_request)->empty() && __xlx_s_axis_arp_lookup_request_V_tmp_Count < __xlx_s_axis_arp_lookup_request_V_read_Size) {
    __xlx_s_axis_arp_lookup_request_tmp_vec.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_arp_lookup_request)->read());
    __xlx_s_axis_arp_lookup_request_V_tmp_Count++;
  }
  ap_apatb_s_axis_arp_lookup_request_V_cap_bc = __xlx_s_axis_arp_lookup_request_tmp_vec.size();
  // store input buffer
  __cosim_s4__* __xlx_s_axis_arp_lookup_request_input_buffer= new __cosim_s4__[__xlx_s_axis_arp_lookup_request_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_arp_lookup_request_tmp_vec.size(); ++i) {
    __xlx_s_axis_arp_lookup_request_input_buffer[i] = __xlx_s_axis_arp_lookup_request_tmp_vec[i];
  }
  // collect __xlx_s_axis_host_arp_lookup_request_tmp_vec
  unsigned __xlx_s_axis_host_arp_lookup_request_V_tmp_Count = 0;
  unsigned __xlx_s_axis_host_arp_lookup_request_V_read_Size = __xlx_s_axis_host_arp_lookup_request_V_size_Reader.read_size();
  vector<__cosim_s4__> __xlx_s_axis_host_arp_lookup_request_tmp_vec;
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_host_arp_lookup_request)->empty() && __xlx_s_axis_host_arp_lookup_request_V_tmp_Count < __xlx_s_axis_host_arp_lookup_request_V_read_Size) {
    __xlx_s_axis_host_arp_lookup_request_tmp_vec.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_host_arp_lookup_request)->read());
    __xlx_s_axis_host_arp_lookup_request_V_tmp_Count++;
  }
  ap_apatb_s_axis_host_arp_lookup_request_V_cap_bc = __xlx_s_axis_host_arp_lookup_request_tmp_vec.size();
  // store input buffer
  __cosim_s4__* __xlx_s_axis_host_arp_lookup_request_input_buffer= new __cosim_s4__[__xlx_s_axis_host_arp_lookup_request_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_host_arp_lookup_request_tmp_vec.size(); ++i) {
    __xlx_s_axis_host_arp_lookup_request_input_buffer[i] = __xlx_s_axis_host_arp_lookup_request_tmp_vec[i];
  }
  //Create input buffer for m_axis
  ap_apatb_m_axis_V_cap_bc = __xlx_m_axis_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_input_buffer= new __cosim_s10__[ap_apatb_m_axis_V_cap_bc];
  //Create input buffer for m_axis_arp_lookup_reply
  ap_apatb_m_axis_arp_lookup_reply_V_cap_bc = __xlx_m_axis_arp_lookup_reply_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_arp_lookup_reply_input_buffer= new __cosim_s10__[ap_apatb_m_axis_arp_lookup_reply_V_cap_bc];
  //Create input buffer for m_axis_host_arp_lookup_reply
  ap_apatb_m_axis_host_arp_lookup_reply_V_cap_bc = __xlx_m_axis_host_arp_lookup_reply_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_host_arp_lookup_reply_input_buffer= new __cosim_s10__[ap_apatb_m_axis_host_arp_lookup_reply_V_cap_bc];
  // DUT call
  arp_server_subnet_top(__xlx_s_axis_input_buffer, __xlx_s_axis_arp_lookup_request_input_buffer, __xlx_s_axis_host_arp_lookup_request_input_buffer, __xlx_m_axis_input_buffer, __xlx_m_axis_arp_lookup_reply_input_buffer, __xlx_m_axis_host_arp_lookup_reply_input_buffer, __xlx_apatb_param_myMacAddress, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_regRequestCount, __xlx_apatb_param_regReplyCount);
  for (unsigned i = 0; i <ap_apatb_m_axis_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->write(__xlx_m_axis_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_arp_lookup_reply_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_arp_lookup_reply)->write(__xlx_m_axis_arp_lookup_reply_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_host_arp_lookup_reply_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_host_arp_lookup_reply)->write(__xlx_m_axis_host_arp_lookup_reply_input_buffer[i]);
}
