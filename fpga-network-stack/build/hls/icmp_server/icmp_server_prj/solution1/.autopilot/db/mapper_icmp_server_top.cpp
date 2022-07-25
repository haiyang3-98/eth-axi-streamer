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
unsigned int ap_apatb_udpIn_V_cap_bc;
static AESL_RUNTIME_BC __xlx_udpIn_V_size_Reader("../tv/stream_size/stream_size_in_udpIn_V.dat");
unsigned int ap_apatb_ttlIn_V_cap_bc;
static AESL_RUNTIME_BC __xlx_ttlIn_V_size_Reader("../tv/stream_size/stream_size_in_ttlIn_V.dat");
unsigned int ap_apatb_m_axis_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_V.dat");
struct __cosim_s10__ { char data[16]; };
extern "C" void icmp_server_top(__cosim_s10__*, __cosim_s10__*, __cosim_s10__*, __cosim_s10__*);
extern "C" void apatb_icmp_server_top_hw(volatile void * __xlx_apatb_param_s_axis, volatile void * __xlx_apatb_param_udpIn, volatile void * __xlx_apatb_param_ttlIn, volatile void * __xlx_apatb_param_m_axis) {
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
  // collect __xlx_udpIn_tmp_vec
  unsigned __xlx_udpIn_V_tmp_Count = 0;
  unsigned __xlx_udpIn_V_read_Size = __xlx_udpIn_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_udpIn_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_udpIn)->empty() && __xlx_udpIn_V_tmp_Count < __xlx_udpIn_V_read_Size) {
    __xlx_udpIn_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_udpIn)->read());
    __xlx_udpIn_V_tmp_Count++;
  }
  ap_apatb_udpIn_V_cap_bc = __xlx_udpIn_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_udpIn_input_buffer= new __cosim_s10__[__xlx_udpIn_tmp_vec.size()];
  for (int i = 0; i < __xlx_udpIn_tmp_vec.size(); ++i) {
    __xlx_udpIn_input_buffer[i] = __xlx_udpIn_tmp_vec[i];
  }
  // collect __xlx_ttlIn_tmp_vec
  unsigned __xlx_ttlIn_V_tmp_Count = 0;
  unsigned __xlx_ttlIn_V_read_Size = __xlx_ttlIn_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_ttlIn_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_ttlIn)->empty() && __xlx_ttlIn_V_tmp_Count < __xlx_ttlIn_V_read_Size) {
    __xlx_ttlIn_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_ttlIn)->read());
    __xlx_ttlIn_V_tmp_Count++;
  }
  ap_apatb_ttlIn_V_cap_bc = __xlx_ttlIn_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_ttlIn_input_buffer= new __cosim_s10__[__xlx_ttlIn_tmp_vec.size()];
  for (int i = 0; i < __xlx_ttlIn_tmp_vec.size(); ++i) {
    __xlx_ttlIn_input_buffer[i] = __xlx_ttlIn_tmp_vec[i];
  }
  //Create input buffer for m_axis
  ap_apatb_m_axis_V_cap_bc = __xlx_m_axis_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_input_buffer= new __cosim_s10__[ap_apatb_m_axis_V_cap_bc];
  // DUT call
  icmp_server_top(__xlx_s_axis_input_buffer, __xlx_udpIn_input_buffer, __xlx_ttlIn_input_buffer, __xlx_m_axis_input_buffer);
  for (unsigned i = 0; i <ap_apatb_m_axis_V_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->write(__xlx_m_axis_input_buffer[i]);
}
