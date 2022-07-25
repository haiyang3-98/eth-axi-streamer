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
#define AUTOTB_TVIN_s_axis_ip_V_data_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_s_axis_ip_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_ip_V_data_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_s_axis_ip_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_ip_V_keep_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_s_axis_ip_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_ip_V_keep_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_s_axis_ip_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_ip_V_strb_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_s_axis_ip_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_ip_V_strb_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_s_axis_ip_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_ip_V_last_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_s_axis_ip_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_ip_V_last_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_s_axis_ip_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_ip_V_data_V "../tv/stream_size/stream_size_in_s_axis_ip_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_ip_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_ip_V_keep_V "../tv/stream_size/stream_size_in_s_axis_ip_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_ip_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_ip_V_strb_V "../tv/stream_size/stream_size_in_s_axis_ip_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_ip_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_ip_V_last_V "../tv/stream_size/stream_size_in_s_axis_ip_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_ip_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_arp_lookup_reply_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_s_axis_arp_lookup_reply_V.dat"
#define AUTOTB_TVOUT_s_axis_arp_lookup_reply_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_s_axis_arp_lookup_reply_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_reply_V "../tv/stream_size/stream_size_in_s_axis_arp_lookup_reply_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_reply_V "../tv/stream_size/stream_ingress_status_s_axis_arp_lookup_reply_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_ip_V_data_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_m_axis_ip_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_ip_V_data_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_m_axis_ip_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_ip_V_keep_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_m_axis_ip_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_ip_V_keep_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_m_axis_ip_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_ip_V_strb_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_m_axis_ip_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_ip_V_strb_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_m_axis_ip_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_ip_V_last_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_m_axis_ip_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_ip_V_last_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_m_axis_ip_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_data_V "../tv/stream_size/stream_size_out_m_axis_ip_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_ip_V_data_V "../tv/stream_size/stream_egress_status_m_axis_ip_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_keep_V "../tv/stream_size/stream_size_out_m_axis_ip_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_ip_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_ip_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_strb_V "../tv/stream_size/stream_size_out_m_axis_ip_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_ip_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_ip_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_last_V "../tv/stream_size/stream_size_out_m_axis_ip_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_ip_V_last_V "../tv/stream_size/stream_egress_status_m_axis_ip_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_arp_lookup_request_V "../tv/cdatafile/c.mac_ip_encode_top.autotvin_m_axis_arp_lookup_request_V.dat"
#define AUTOTB_TVOUT_m_axis_arp_lookup_request_V "../tv/cdatafile/c.mac_ip_encode_top.autotvout_m_axis_arp_lookup_request_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_request_V "../tv/stream_size/stream_size_out_m_axis_arp_lookup_request_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_arp_lookup_request_V "../tv/stream_size/stream_egress_status_m_axis_arp_lookup_request_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_myMacAddress "../tv/cdatafile/c.mac_ip_encode_top.autotvin_myMacAddress.dat"
#define AUTOTB_TVOUT_myMacAddress "../tv/cdatafile/c.mac_ip_encode_top.autotvout_myMacAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_regSubNetMask "../tv/cdatafile/c.mac_ip_encode_top.autotvin_regSubNetMask.dat"
#define AUTOTB_TVOUT_regSubNetMask "../tv/cdatafile/c.mac_ip_encode_top.autotvout_regSubNetMask.dat"
// wrapc file define:
#define AUTOTB_TVIN_regDefaultGateway "../tv/cdatafile/c.mac_ip_encode_top.autotvin_regDefaultGateway.dat"
#define AUTOTB_TVOUT_regDefaultGateway "../tv/cdatafile/c.mac_ip_encode_top.autotvout_regDefaultGateway.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_ip_V_data_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_s_axis_ip_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_ip_V_keep_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_s_axis_ip_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_ip_V_strb_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_s_axis_ip_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_ip_V_last_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_s_axis_ip_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_arp_lookup_reply_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_s_axis_arp_lookup_reply_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_ip_V_data_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_m_axis_ip_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_ip_V_keep_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_m_axis_ip_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_ip_V_strb_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_m_axis_ip_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_ip_V_last_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_m_axis_ip_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_arp_lookup_request_V "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_m_axis_arp_lookup_request_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_myMacAddress "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_myMacAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regSubNetMask "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_regSubNetMask.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regDefaultGateway "../tv/rtldatafile/rtl.mac_ip_encode_top.autotvout_regDefaultGateway.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  s_axis_ip_V_data_V_depth = 0;
  s_axis_ip_V_keep_V_depth = 0;
  s_axis_ip_V_strb_V_depth = 0;
  s_axis_ip_V_last_V_depth = 0;
  s_axis_arp_lookup_reply_V_depth = 0;
  m_axis_ip_V_data_V_depth = 0;
  m_axis_ip_V_keep_V_depth = 0;
  m_axis_ip_V_strb_V_depth = 0;
  m_axis_ip_V_last_V_depth = 0;
  m_axis_arp_lookup_request_V_depth = 0;
  myMacAddress_depth = 0;
  regSubNetMask_depth = 0;
  regDefaultGateway_depth = 0;
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
  total_list << "{s_axis_ip_V_data_V " << s_axis_ip_V_data_V_depth << "}\n";
  total_list << "{s_axis_ip_V_keep_V " << s_axis_ip_V_keep_V_depth << "}\n";
  total_list << "{s_axis_ip_V_strb_V " << s_axis_ip_V_strb_V_depth << "}\n";
  total_list << "{s_axis_ip_V_last_V " << s_axis_ip_V_last_V_depth << "}\n";
  total_list << "{s_axis_arp_lookup_reply_V " << s_axis_arp_lookup_reply_V_depth << "}\n";
  total_list << "{m_axis_ip_V_data_V " << m_axis_ip_V_data_V_depth << "}\n";
  total_list << "{m_axis_ip_V_keep_V " << m_axis_ip_V_keep_V_depth << "}\n";
  total_list << "{m_axis_ip_V_strb_V " << m_axis_ip_V_strb_V_depth << "}\n";
  total_list << "{m_axis_ip_V_last_V " << m_axis_ip_V_last_V_depth << "}\n";
  total_list << "{m_axis_arp_lookup_request_V " << m_axis_arp_lookup_request_V_depth << "}\n";
  total_list << "{myMacAddress " << myMacAddress_depth << "}\n";
  total_list << "{regSubNetMask " << regSubNetMask_depth << "}\n";
  total_list << "{regDefaultGateway " << regDefaultGateway_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int s_axis_ip_V_data_V_depth;
    int s_axis_ip_V_keep_V_depth;
    int s_axis_ip_V_strb_V_depth;
    int s_axis_ip_V_last_V_depth;
    int s_axis_arp_lookup_reply_V_depth;
    int m_axis_ip_V_data_V_depth;
    int m_axis_ip_V_keep_V_depth;
    int m_axis_ip_V_strb_V_depth;
    int m_axis_ip_V_last_V_depth;
    int m_axis_arp_lookup_request_V_depth;
    int myMacAddress_depth;
    int regSubNetMask_depth;
    int regDefaultGateway_depth;
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
struct __cosim_s10__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_s40__ { char data[128]; };
extern "C" void mac_ip_encode_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, __cosim_s8__*, __cosim_s4__*, __cosim_s4__*);

extern "C" void apatb_mac_ip_encode_top_hw(volatile void * __xlx_apatb_param_s_axis_ip, volatile void * __xlx_apatb_param_s_axis_arp_lookup_reply, volatile void * __xlx_apatb_param_m_axis_ip, volatile void * __xlx_apatb_param_m_axis_arp_lookup_request, __cosim_s8__* __xlx_apatb_param_myMacAddress, __cosim_s4__* __xlx_apatb_param_regSubNetMask, __cosim_s4__* __xlx_apatb_param_regDefaultGateway) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_s_axis_ip_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_ip_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_ip_stream_buf_final_size; ++i)((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_ip)->read();
long __xlx_apatb_param_s_axis_arp_lookup_reply_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_reply_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_arp_lookup_reply_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_arp_lookup_reply_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_arp_lookup_reply)->read();
{sc_bv<1024> xlx_stream_m_axis_ip_pc_buffer;
unsigned xlx_stream_m_axis_ip_size = 0;

          std::vector<sc_bv<512> > m_axis_ip_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_ip_V_data_V);
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
          std::vector<sc_bv<512> > m_axis_ip_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_ip");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_ip_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_ip_size=m_axis_ip_V_data_V_pc_buffer.size();
m_axis_ip_V_data_V_pc_buffer_Copy=m_axis_ip_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_ip_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_ip_V_keep_V);
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
          std::vector<sc_bv<512> > m_axis_ip_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_ip");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_ip_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_ip_size=m_axis_ip_V_keep_V_pc_buffer.size();
m_axis_ip_V_keep_V_pc_buffer_Copy=m_axis_ip_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_ip_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_ip_V_strb_V);
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
          std::vector<sc_bv<512> > m_axis_ip_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_ip");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_ip_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_ip_size=m_axis_ip_V_strb_V_pc_buffer.size();
m_axis_ip_V_strb_V_pc_buffer_Copy=m_axis_ip_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<512> > m_axis_ip_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_ip_V_last_V);
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
          std::vector<sc_bv<512> > m_axis_ip_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_ip");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_ip_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_ip_size=m_axis_ip_V_last_V_pc_buffer.size();
m_axis_ip_V_last_V_pc_buffer_Copy=m_axis_ip_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_ip_size; j != e; ++j) {
xlx_stream_m_axis_ip_pc_buffer.range(511, 0) = m_axis_ip_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_ip_pc_buffer.range(575, 512) = m_axis_ip_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_ip_pc_buffer.range(639, 576) = m_axis_ip_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_ip_pc_buffer.range(655, 648) = m_axis_ip_V_last_V_pc_buffer_Copy[j];
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = xlx_stream_m_axis_ip_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = xlx_stream_m_axis_ip_pc_buffer.range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = xlx_stream_m_axis_ip_pc_buffer.range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = xlx_stream_m_axis_ip_pc_buffer.range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = xlx_stream_m_axis_ip_pc_buffer.range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = xlx_stream_m_axis_ip_pc_buffer.range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = xlx_stream_m_axis_ip_pc_buffer.range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = xlx_stream_m_axis_ip_pc_buffer.range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = xlx_stream_m_axis_ip_pc_buffer.range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = xlx_stream_m_axis_ip_pc_buffer.range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = xlx_stream_m_axis_ip_pc_buffer.range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = xlx_stream_m_axis_ip_pc_buffer.range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = xlx_stream_m_axis_ip_pc_buffer.range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = xlx_stream_m_axis_ip_pc_buffer.range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = xlx_stream_m_axis_ip_pc_buffer.range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = xlx_stream_m_axis_ip_pc_buffer.range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_ip)->write(xlx_stream_elt);
}}long __xlx_apatb_param_m_axis_arp_lookup_request_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_request_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_arp_lookup_request_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_arp_lookup_request_V);
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
          std::vector<sc_bv<32> > m_axis_arp_lookup_request_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_arp_lookup_request_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_arp_lookup_request_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s4__ xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = m_axis_arp_lookup_request_V_pc_buffer[j].to_int64();
          ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_arp_lookup_request)->write(xlx_stream_elt);
}
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
//s_axis_ip
aesl_fh.touch(AUTOTB_TVIN_s_axis_ip_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_ip_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_ip_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_ip_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_ip_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_ip_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_ip_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_ip_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_last_V);
//s_axis_arp_lookup_reply_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_arp_lookup_reply_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_arp_lookup_reply_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_reply_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_reply_V);
//m_axis_ip
aesl_fh.touch(AUTOTB_TVIN_m_axis_ip_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_ip_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_ip_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_ip_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_ip_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_ip_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_ip_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_ip_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_ip_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_ip_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_ip_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_ip_V_last_V);
//m_axis_arp_lookup_request_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_arp_lookup_request_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_arp_lookup_request_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_request_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_arp_lookup_request_V);
//myMacAddress
aesl_fh.touch(AUTOTB_TVIN_myMacAddress);
aesl_fh.touch(AUTOTB_TVOUT_myMacAddress);
//regSubNetMask
aesl_fh.touch(AUTOTB_TVIN_regSubNetMask);
aesl_fh.touch(AUTOTB_TVOUT_regSubNetMask);
//regDefaultGateway
aesl_fh.touch(AUTOTB_TVIN_regDefaultGateway);
aesl_fh.touch(AUTOTB_TVOUT_regDefaultGateway);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s80__> __xlx_apatb_param_s_axis_ip_stream_buf;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_ip)->empty())
    __xlx_apatb_param_s_axis_ip_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_ip)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_ip_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_ip)->write(__xlx_apatb_param_s_axis_ip_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_ip_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_ip)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_arp_lookup_reply)->empty())
    __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_arp_lookup_reply)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_arp_lookup_reply)->write(__xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_arp_lookup_reply)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_m_axis_ip_stream_buf;
long __xlx_apatb_param_m_axis_ip_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_ip)->size();
std::vector<__cosim_s4__> __xlx_apatb_param_m_axis_arp_lookup_request_stream_buf;
long __xlx_apatb_param_m_axis_arp_lookup_request_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_arp_lookup_request)->size();
// print myMacAddress Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_myMacAddress, __xlx_sprintf_buffer.data());
  {
    sc_bv<48> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_myMacAddress);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_myMacAddress, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.myMacAddress_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_myMacAddress, __xlx_sprintf_buffer.data());
}
// print regSubNetMask Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_regSubNetMask, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regSubNetMask);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_regSubNetMask, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regSubNetMask_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_regSubNetMask, __xlx_sprintf_buffer.data());
}
// print regDefaultGateway Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_regDefaultGateway, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_regDefaultGateway);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_regDefaultGateway, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regDefaultGateway_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_regDefaultGateway, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
mac_ip_encode_top_hw_stub_wrapper(__xlx_apatb_param_s_axis_ip, __xlx_apatb_param_s_axis_arp_lookup_reply, __xlx_apatb_param_m_axis_ip, __xlx_apatb_param_m_axis_arp_lookup_request, __xlx_apatb_param_myMacAddress, __xlx_apatb_param_regSubNetMask, __xlx_apatb_param_regDefaultGateway);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_s_axis_ip_stream_buf_final_size = __xlx_apatb_param_s_axis_ip_stream_buf_size - ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_ip)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_ip_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_s_axis_ip_stream_buf[j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_ip_stream_buf_final_size, &tcl_file.s_axis_ip_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_ip_stream_buf_final_size, &tcl_file.s_axis_ip_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_ip_stream_buf_final_size, &tcl_file.s_axis_ip_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_ip_stream_buf_final_size, &tcl_file.s_axis_ip_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_ip_stream_buf_final_size > 0) {
  long s_axis_ip_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_ip_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_ip_stream_buf_final_size; j != e; j++) {
    s_axis_ip_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_ip_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_ip_stream_buf_final_size > 0) {
  long s_axis_ip_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_ip_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_ip_stream_buf_final_size; j != e; j++) {
    s_axis_ip_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_ip_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_ip_stream_buf_final_size > 0) {
  long s_axis_ip_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_ip_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_ip_stream_buf_final_size; j != e; j++) {
    s_axis_ip_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_ip_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_ip_stream_buf_final_size > 0) {
  long s_axis_ip_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_ip_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_ip_stream_buf_final_size; j != e; j++) {
    s_axis_ip_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_ip_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_ip_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_ip_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_ip_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_ip_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_ip_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_final_size = __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_arp_lookup_reply)->size();
// print s_axis_arp_lookup_reply_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv_hw;
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf[j])[0*2+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_final_size, &tcl_file.s_axis_arp_lookup_reply_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_final_size > 0) {
  long s_axis_arp_lookup_reply_V_stream_ingress_size = __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_arp_lookup_reply_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_final_size; j != e; j++) {
    s_axis_arp_lookup_reply_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_arp_lookup_reply_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_arp_lookup_reply_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_arp_lookup_reply_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_arp_lookup_reply_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_ip_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_ip)->size() - __xlx_apatb_param_m_axis_ip_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_ip)->empty())
    __xlx_apatb_param_m_axis_ip_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_ip)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_ip_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_ip)->write(__xlx_apatb_param_m_axis_ip_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_ip_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_m_axis_ip_stream_buf[__xlx_apatb_param_m_axis_ip_stream_buf_size+j])[0*16+15];
sc_bv<512> __xlx_tmp_0_lv = __xlx_tmp_lv.range(511, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_1_lv = __xlx_tmp_lv.range(575, 512);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<64> __xlx_tmp_2_lv = __xlx_tmp_lv.range(639, 576);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(655, 648);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_ip_stream_buf_final_size, &tcl_file.m_axis_ip_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_ip_stream_buf_final_size, &tcl_file.m_axis_ip_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_ip_stream_buf_final_size, &tcl_file.m_axis_ip_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_ip_stream_buf_final_size, &tcl_file.m_axis_ip_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_ip_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_ip_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_ip_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_ip_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_ip_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_arp_lookup_request_stream_buf_final_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_arp_lookup_request)->size() - __xlx_apatb_param_m_axis_arp_lookup_request_stream_buf_size;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_arp_lookup_request)->empty())
    __xlx_apatb_param_m_axis_arp_lookup_request_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_arp_lookup_request)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_arp_lookup_request_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_arp_lookup_request)->write(__xlx_apatb_param_m_axis_arp_lookup_request_stream_buf[i]);
  }
// print m_axis_arp_lookup_request_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_arp_lookup_request_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_m_axis_arp_lookup_request_stream_buf[__xlx_apatb_param_m_axis_arp_lookup_request_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_arp_lookup_request_stream_buf_final_size, &tcl_file.m_axis_arp_lookup_request_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_arp_lookup_request_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
