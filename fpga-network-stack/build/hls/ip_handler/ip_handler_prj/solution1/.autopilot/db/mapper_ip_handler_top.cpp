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
unsigned int ap_apatb_s_axis_raw_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_raw_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_raw_V.dat");
unsigned int ap_apatb_m_axis_arp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_arp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_arp_V.dat");
unsigned int ap_apatb_m_axis_icmpv6_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_icmpv6_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_icmpv6_V.dat");
unsigned int ap_apatb_m_axis_ipv6udp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_ipv6udp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_ipv6udp_V.dat");
unsigned int ap_apatb_m_axis_icmp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_icmp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_icmp_V.dat");
unsigned int ap_apatb_m_axis_udp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_udp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_udp_V.dat");
unsigned int ap_apatb_m_axis_tcp_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tcp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tcp_V.dat");
unsigned int ap_apatb_m_axis_roce_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_roce_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_roce_V.dat");
struct __cosim_s80__ { char data[128]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s40__ { char data[64]; };
extern "C" void ip_handler_top(__cosim_s80__*, __cosim_s80__*, __cosim_s80__*, __cosim_s80__*, __cosim_s80__*, __cosim_s80__*, __cosim_s80__*, __cosim_s80__*, __cosim_s4__);
extern "C" void apatb_ip_handler_top_hw(volatile void * __xlx_apatb_param_s_axis_raw, volatile void * __xlx_apatb_param_m_axis_arp, volatile void * __xlx_apatb_param_m_axis_icmpv6, volatile void * __xlx_apatb_param_m_axis_ipv6udp, volatile void * __xlx_apatb_param_m_axis_icmp, volatile void * __xlx_apatb_param_m_axis_udp, volatile void * __xlx_apatb_param_m_axis_tcp, volatile void * __xlx_apatb_param_m_axis_roce, __cosim_s4__ __xlx_apatb_param_myIpAddress) {
  // collect __xlx_s_axis_raw_tmp_vec
  unsigned __xlx_s_axis_raw_V_tmp_Count = 0;
  unsigned __xlx_s_axis_raw_V_read_Size = __xlx_s_axis_raw_V_size_Reader.read_size();
  vector<__cosim_s80__> __xlx_s_axis_raw_tmp_vec;
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_raw)->empty() && __xlx_s_axis_raw_V_tmp_Count < __xlx_s_axis_raw_V_read_Size) {
    __xlx_s_axis_raw_tmp_vec.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_raw)->read());
    __xlx_s_axis_raw_V_tmp_Count++;
  }
  ap_apatb_s_axis_raw_V_cap_bc = __xlx_s_axis_raw_tmp_vec.size();
  // store input buffer
  __cosim_s80__* __xlx_s_axis_raw_input_buffer= new __cosim_s80__[__xlx_s_axis_raw_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_raw_tmp_vec.size(); ++i) {
    __xlx_s_axis_raw_input_buffer[i] = __xlx_s_axis_raw_tmp_vec[i];
  }
  //Create input buffer for m_axis_arp
  ap_apatb_m_axis_arp_V_cap_bc = __xlx_m_axis_arp_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_arp_input_buffer= new __cosim_s80__[ap_apatb_m_axis_arp_V_cap_bc];
  //Create input buffer for m_axis_icmpv6
  ap_apatb_m_axis_icmpv6_V_cap_bc = __xlx_m_axis_icmpv6_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_icmpv6_input_buffer= new __cosim_s80__[ap_apatb_m_axis_icmpv6_V_cap_bc];
  //Create input buffer for m_axis_ipv6udp
  ap_apatb_m_axis_ipv6udp_V_cap_bc = __xlx_m_axis_ipv6udp_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_ipv6udp_input_buffer= new __cosim_s80__[ap_apatb_m_axis_ipv6udp_V_cap_bc];
  //Create input buffer for m_axis_icmp
  ap_apatb_m_axis_icmp_V_cap_bc = __xlx_m_axis_icmp_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_icmp_input_buffer= new __cosim_s80__[ap_apatb_m_axis_icmp_V_cap_bc];
  //Create input buffer for m_axis_udp
  ap_apatb_m_axis_udp_V_cap_bc = __xlx_m_axis_udp_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_udp_input_buffer= new __cosim_s80__[ap_apatb_m_axis_udp_V_cap_bc];
  //Create input buffer for m_axis_tcp
  ap_apatb_m_axis_tcp_V_cap_bc = __xlx_m_axis_tcp_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_tcp_input_buffer= new __cosim_s80__[ap_apatb_m_axis_tcp_V_cap_bc];
  //Create input buffer for m_axis_roce
  ap_apatb_m_axis_roce_V_cap_bc = __xlx_m_axis_roce_V_size_Reader.read_size();
  __cosim_s80__* __xlx_m_axis_roce_input_buffer= new __cosim_s80__[ap_apatb_m_axis_roce_V_cap_bc];
  // DUT call
  ip_handler_top(__xlx_s_axis_raw_input_buffer, __xlx_m_axis_arp_input_buffer, __xlx_m_axis_icmpv6_input_buffer, __xlx_m_axis_ipv6udp_input_buffer, __xlx_m_axis_icmp_input_buffer, __xlx_m_axis_udp_input_buffer, __xlx_m_axis_tcp_input_buffer, __xlx_m_axis_roce_input_buffer, __xlx_apatb_param_myIpAddress);
  for (unsigned i = 0; i <ap_apatb_m_axis_arp_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_arp)->write(__xlx_m_axis_arp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_icmpv6_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_icmpv6)->write(__xlx_m_axis_icmpv6_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_ipv6udp_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_ipv6udp)->write(__xlx_m_axis_ipv6udp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_icmp_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_icmp)->write(__xlx_m_axis_icmp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_udp_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_udp)->write(__xlx_m_axis_udp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tcp_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tcp)->write(__xlx_m_axis_tcp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_roce_V_cap_bc; ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_roce)->write(__xlx_m_axis_roce_input_buffer[i]);
}
