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
unsigned int ap_apatb_m_axis_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_V.dat");
struct __cosim_s80__ { char data[128]; };
struct __cosim_s40__ { char data[64]; };
extern "C" void ethernet_frame_padding_512(__cosim_s80__*, __cosim_s80__*);
extern "C" void apatb_ethernet_frame_padding_512_hw(volatile void * __xlx_apatb_param_s_axis, volatile void * __xlx_apatb_param_m_axis) {
  // collect __xlx_s_axis_tmp_vec
  unsigned __xlx_s_axis_V_tmp_Count = 0;
  unsigned __xlx_s_axis_V_read_Size = __xlx_s_axis_V_size_Reader.read_size();
  vector<__cosim_s80__> __xlx_s_axis_tmp_vec;
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis)->empty() && __xlx_s_axis_V_tmp_Count < __xlx_s_axis_V_read_Size) {
    __xlx_s_axis_tmp_vec.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis)->read());
    __xlx_s_axis_V_tmp_Count++;
  }
  ap_apatb_s_axis_V_cap_bc = __xlx_s_axis_tmp_vec.size();
  // store input buffer
  __cosim_s80__* __xlx_s_axis_input_buffer= new __cosim_s80__[__xlx_s_axis_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tmp_vec.size(); ++i) {
    __xlx_s_axis_input_buffer[i] = __xlx_s_axis_tmp_vec[i];
  }
  //Create input buffer for m_axis
  ap_apatb_m_axis_V_cap_bc = __xlx_m_axis_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_input_buffer= new __cosim_s80__[ap_apatb_m_axis_V_cap_bc];
  // DUT call
  ethernet_frame_padding_512(__xlx_s_axis_input_buffer, __xlx_m_axis_input_buffer);
  for (unsigned i = 0; i <ap_apatb_m_axis_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis)->write(__xlx_m_axis_input_buffer[i]);
}
