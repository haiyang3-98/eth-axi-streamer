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
#define AUTOTB_TVIN_s_axis_V_data_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_s_axis_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_V_data_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_s_axis_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_V_keep_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_s_axis_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_V_keep_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_s_axis_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_V_strb_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_s_axis_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_V_strb_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_s_axis_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_V_last_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_s_axis_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_V_last_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_s_axis_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_V_data_V "../tv/stream_size/stream_size_in_s_axis_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_V_keep_V "../tv/stream_size/stream_size_in_s_axis_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_V_strb_V "../tv/stream_size/stream_size_in_s_axis_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_V_last_V "../tv/stream_size/stream_size_in_s_axis_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_arp_lookup_request_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_s_axis_arp_lookup_request_V.dat"
#define AUTOTB_TVOUT_s_axis_arp_lookup_request_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_s_axis_arp_lookup_request_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_request_V "../tv/stream_size/stream_size_in_s_axis_arp_lookup_request_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_request_V "../tv/stream_size/stream_ingress_status_s_axis_arp_lookup_request_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_host_arp_lookup_request_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_s_axis_host_arp_lookup_request_V.dat"
#define AUTOTB_TVOUT_s_axis_host_arp_lookup_request_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_s_axis_host_arp_lookup_request_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_host_arp_lookup_request_V "../tv/stream_size/stream_size_in_s_axis_host_arp_lookup_request_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_host_arp_lookup_request_V "../tv/stream_size/stream_ingress_status_s_axis_host_arp_lookup_request_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_V_data_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_m_axis_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_V_data_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_m_axis_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_V_keep_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_m_axis_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_V_keep_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_m_axis_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_V_strb_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_m_axis_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_V_strb_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_m_axis_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_V_last_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_m_axis_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_V_last_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_m_axis_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_V_data_V "../tv/stream_size/stream_size_out_m_axis_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_V_data_V "../tv/stream_size/stream_egress_status_m_axis_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_V_keep_V "../tv/stream_size/stream_size_out_m_axis_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_V_strb_V "../tv/stream_size/stream_size_out_m_axis_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_V_last_V "../tv/stream_size/stream_size_out_m_axis_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_V_last_V "../tv/stream_size/stream_egress_status_m_axis_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_arp_lookup_reply_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_m_axis_arp_lookup_reply_V.dat"
#define AUTOTB_TVOUT_m_axis_arp_lookup_reply_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_m_axis_arp_lookup_reply_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_reply_V "../tv/stream_size/stream_size_out_m_axis_arp_lookup_reply_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_arp_lookup_reply_V "../tv/stream_size/stream_egress_status_m_axis_arp_lookup_reply_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_host_arp_lookup_reply_V "../tv/cdatafile/c.arp_server_subnet_top.autotvin_m_axis_host_arp_lookup_reply_V.dat"
#define AUTOTB_TVOUT_m_axis_host_arp_lookup_reply_V "../tv/cdatafile/c.arp_server_subnet_top.autotvout_m_axis_host_arp_lookup_reply_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_host_arp_lookup_reply_V "../tv/stream_size/stream_size_out_m_axis_host_arp_lookup_reply_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_host_arp_lookup_reply_V "../tv/stream_size/stream_egress_status_m_axis_host_arp_lookup_reply_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_myMacAddress "../tv/cdatafile/c.arp_server_subnet_top.autotvin_myMacAddress.dat"
#define AUTOTB_TVOUT_myMacAddress "../tv/cdatafile/c.arp_server_subnet_top.autotvout_myMacAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_myIpAddress "../tv/cdatafile/c.arp_server_subnet_top.autotvin_myIpAddress.dat"
#define AUTOTB_TVOUT_myIpAddress "../tv/cdatafile/c.arp_server_subnet_top.autotvout_myIpAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_regRequestCount "../tv/cdatafile/c.arp_server_subnet_top.autotvin_regRequestCount.dat"
#define AUTOTB_TVOUT_regRequestCount "../tv/cdatafile/c.arp_server_subnet_top.autotvout_regRequestCount.dat"
// wrapc file define:
#define AUTOTB_TVIN_regReplyCount "../tv/cdatafile/c.arp_server_subnet_top.autotvin_regReplyCount.dat"
#define AUTOTB_TVOUT_regReplyCount "../tv/cdatafile/c.arp_server_subnet_top.autotvout_regReplyCount.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_V_data_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_s_axis_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_V_keep_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_s_axis_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_V_strb_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_s_axis_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_V_last_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_s_axis_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_arp_lookup_request_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_s_axis_arp_lookup_request_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_host_arp_lookup_request_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_s_axis_host_arp_lookup_request_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_V_data_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_m_axis_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_V_keep_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_m_axis_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_V_strb_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_m_axis_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_V_last_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_m_axis_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_arp_lookup_reply_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_m_axis_arp_lookup_reply_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_host_arp_lookup_reply_V "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_m_axis_host_arp_lookup_reply_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_myMacAddress "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_myMacAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_myIpAddress "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_myIpAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regRequestCount "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_regRequestCount.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regReplyCount "../tv/rtldatafile/rtl.arp_server_subnet_top.autotvout_regReplyCount.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  s_axis_V_data_V_depth = 0;
  s_axis_V_keep_V_depth = 0;
  s_axis_V_strb_V_depth = 0;
  s_axis_V_last_V_depth = 0;
  s_axis_arp_lookup_request_V_depth = 0;
  s_axis_host_arp_lookup_request_V_depth = 0;
  m_axis_V_data_V_depth = 0;
  m_axis_V_keep_V_depth = 0;
  m_axis_V_strb_V_depth = 0;
  m_axis_V_last_V_depth = 0;
  m_axis_arp_lookup_reply_V_depth = 0;
  m_axis_host_arp_lookup_reply_V_depth = 0;
  myMacAddress_depth = 0;
  myIpAddress_depth = 0;
  regRequestCount_depth = 0;
  regReplyCount_depth = 0;
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
  total_list << "{s_axis_V_data_V " << s_axis_V_data_V_depth << "}\n";
  total_list << "{s_axis_V_keep_V " << s_axis_V_keep_V_depth << "}\n";
  total_list << "{s_axis_V_strb_V " << s_axis_V_strb_V_depth << "}\n";
  total_list << "{s_axis_V_last_V " << s_axis_V_last_V_depth << "}\n";
  total_list << "{s_axis_arp_lookup_request_V " << s_axis_arp_lookup_request_V_depth << "}\n";
  total_list << "{s_axis_host_arp_lookup_request_V " << s_axis_host_arp_lookup_request_V_depth << "}\n";
  total_list << "{m_axis_V_data_V " << m_axis_V_data_V_depth << "}\n";
  total_list << "{m_axis_V_keep_V " << m_axis_V_keep_V_depth << "}\n";
  total_list << "{m_axis_V_strb_V " << m_axis_V_strb_V_depth << "}\n";
  total_list << "{m_axis_V_last_V " << m_axis_V_last_V_depth << "}\n";
  total_list << "{m_axis_arp_lookup_reply_V " << m_axis_arp_lookup_reply_V_depth << "}\n";
  total_list << "{m_axis_host_arp_lookup_reply_V " << m_axis_host_arp_lookup_reply_V_depth << "}\n";
  total_list << "{myMacAddress " << myMacAddress_depth << "}\n";
  total_list << "{myIpAddress " << myIpAddress_depth << "}\n";
  total_list << "{regRequestCount " << regRequestCount_depth << "}\n";
  total_list << "{regReplyCount " << regReplyCount_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int s_axis_V_data_V_depth;
    int s_axis_V_keep_V_depth;
    int s_axis_V_strb_V_depth;
    int s_axis_V_last_V_depth;
    int s_axis_arp_lookup_request_V_depth;
    int s_axis_host_arp_lookup_request_V_depth;
    int m_axis_V_data_V_depth;
    int m_axis_V_keep_V_depth;
    int m_axis_V_strb_V_depth;
    int m_axis_V_last_V_depth;
    int m_axis_arp_lookup_reply_V_depth;
    int m_axis_host_arp_lookup_reply_V_depth;
    int myMacAddress_depth;
    int myIpAddress_depth;
    int regRequestCount_depth;
    int regReplyCount_depth;
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
struct __cosim_s10__ { char data[16]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
extern "C" void arp_server_subnet_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, __cosim_s8__*, __cosim_s4__*, volatile void *, volatile void *);

extern "C" void apatb_arp_server_subnet_top_hw(volatile void * __xlx_apatb_param_s_axis, volatile void * __xlx_apatb_param_s_axis_arp_lookup_request, volatile void * __xlx_apatb_param_s_axis_host_arp_lookup_request, volatile void * __xlx_apatb_param_m_axis, volatile void * __xlx_apatb_param_m_axis_arp_lookup_reply, volatile void * __xlx_apatb_param_m_axis_host_arp_lookup_reply, __cosim_s8__* __xlx_apatb_param_myMacAddress, __cosim_s4__* __xlx_apatb_param_myIpAddress, volatile void * __xlx_apatb_param_regRequestCount, volatile void * __xlx_apatb_param_regReplyCount) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_s_axis_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->read();
long __xlx_apatb_param_s_axis_arp_lookup_request_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_request_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_arp_lookup_request_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_arp_lookup_request_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_arp_lookup_request)->read();
long __xlx_apatb_param_s_axis_host_arp_lookup_request_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_host_arp_lookup_request_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_host_arp_lookup_request_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_host_arp_lookup_request_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_host_arp_lookup_request)->read();
{sc_bv<128> xlx_stream_m_axis_pc_buffer;
unsigned xlx_stream_m_axis_size = 0;

          std::vector<sc_bv<64> > m_axis_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_V_data_V);
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
          std::vector<sc_bv<64> > m_axis_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_size=m_axis_V_data_V_pc_buffer.size();
m_axis_V_data_V_pc_buffer_Copy=m_axis_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_V_keep_V);
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
          std::vector<sc_bv<64> > m_axis_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_size=m_axis_V_keep_V_pc_buffer.size();
m_axis_V_keep_V_pc_buffer_Copy=m_axis_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_V_strb_V);
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
          std::vector<sc_bv<64> > m_axis_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_size=m_axis_V_strb_V_pc_buffer.size();
m_axis_V_strb_V_pc_buffer_Copy=m_axis_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_V_last_V);
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
          std::vector<sc_bv<64> > m_axis_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_m_axis_size=m_axis_V_last_V_pc_buffer.size();
m_axis_V_last_V_pc_buffer_Copy=m_axis_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_size; j != e; ++j) {
xlx_stream_m_axis_pc_buffer.range(63, 0) = m_axis_V_data_V_pc_buffer_Copy[j];
xlx_stream_m_axis_pc_buffer.range(71, 64) = m_axis_V_keep_V_pc_buffer_Copy[j];
xlx_stream_m_axis_pc_buffer.range(79, 72) = m_axis_V_strb_V_pc_buffer_Copy[j];
xlx_stream_m_axis_pc_buffer.range(95, 88) = m_axis_V_last_V_pc_buffer_Copy[j];
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = xlx_stream_m_axis_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = xlx_stream_m_axis_pc_buffer.range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->write(xlx_stream_elt);
}}long __xlx_apatb_param_m_axis_arp_lookup_reply_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_reply_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_arp_lookup_reply_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_arp_lookup_reply_V);
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
          std::vector<sc_bv<128> > m_axis_arp_lookup_reply_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_arp_lookup_reply_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_arp_lookup_reply_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_arp_lookup_reply_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_arp_lookup_reply_V_pc_buffer[j].range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_arp_lookup_reply)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_host_arp_lookup_reply_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_host_arp_lookup_reply_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_host_arp_lookup_reply_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_host_arp_lookup_reply_V);
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
          std::vector<sc_bv<128> > m_axis_host_arp_lookup_reply_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_host_arp_lookup_reply_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_host_arp_lookup_reply_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_host_arp_lookup_reply_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_host_arp_lookup_reply_V_pc_buffer[j].range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_host_arp_lookup_reply)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_regRequestCount);
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
          std::vector<sc_bv<16> > regRequestCount_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "regRequestCount");
  
            // push token into output port buffer
            if (AESL_token != "") {
              regRequestCount_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((short*)__xlx_apatb_param_regRequestCount)[0] = regRequestCount_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_regReplyCount);
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
          std::vector<sc_bv<16> > regReplyCount_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "regReplyCount");
  
            // push token into output port buffer
            if (AESL_token != "") {
              regReplyCount_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((short*)__xlx_apatb_param_regReplyCount)[0] = regReplyCount_pc_buffer[0].to_int64();
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
//s_axis
aesl_fh.touch(AUTOTB_TVIN_s_axis_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_s_axis_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_last_V);
//s_axis_arp_lookup_request_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_arp_lookup_request_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_arp_lookup_request_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_request_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_request_V);
//s_axis_host_arp_lookup_request_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_host_arp_lookup_request_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_host_arp_lookup_request_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_host_arp_lookup_request_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_host_arp_lookup_request_V);
//m_axis
aesl_fh.touch(AUTOTB_TVIN_m_axis_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_m_axis_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_V_last_V);
//m_axis_arp_lookup_reply_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_arp_lookup_reply_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_arp_lookup_reply_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_reply_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_arp_lookup_reply_V);
//m_axis_host_arp_lookup_reply_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_host_arp_lookup_reply_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_host_arp_lookup_reply_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_host_arp_lookup_reply_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_host_arp_lookup_reply_V);
//myMacAddress
aesl_fh.touch(AUTOTB_TVIN_myMacAddress);
aesl_fh.touch(AUTOTB_TVOUT_myMacAddress);
//myIpAddress
aesl_fh.touch(AUTOTB_TVIN_myIpAddress);
aesl_fh.touch(AUTOTB_TVOUT_myIpAddress);
//regRequestCount
aesl_fh.touch(AUTOTB_TVIN_regRequestCount);
aesl_fh.touch(AUTOTB_TVOUT_regRequestCount);
//regReplyCount
aesl_fh.touch(AUTOTB_TVIN_regReplyCount);
aesl_fh.touch(AUTOTB_TVOUT_regReplyCount);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->empty())
    __xlx_apatb_param_s_axis_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->write(__xlx_apatb_param_s_axis_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->size();
std::vector<__cosim_s4__> __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_arp_lookup_request)->empty())
    __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_arp_lookup_request)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_arp_lookup_request)->write(__xlx_apatb_param_s_axis_arp_lookup_request_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_arp_lookup_request)->size();
std::vector<__cosim_s4__> __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_host_arp_lookup_request)->empty())
    __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_host_arp_lookup_request)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_host_arp_lookup_request)->write(__xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_host_arp_lookup_request)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_stream_buf;
long __xlx_apatb_param_m_axis_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf;
long __xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_arp_lookup_reply)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf;
long __xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_host_arp_lookup_reply)->size();
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
// print regRequestCount Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_regRequestCount, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regRequestCount);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_regRequestCount, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regRequestCount_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_regRequestCount, __xlx_sprintf_buffer.data());
}
// print regReplyCount Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_regReplyCount, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regReplyCount);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_regReplyCount, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regReplyCount_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_regReplyCount, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
arp_server_subnet_top_hw_stub_wrapper(__xlx_apatb_param_s_axis, __xlx_apatb_param_s_axis_arp_lookup_request, __xlx_apatb_param_s_axis_host_arp_lookup_request, __xlx_apatb_param_m_axis, __xlx_apatb_param_m_axis_arp_lookup_reply, __xlx_apatb_param_m_axis_host_arp_lookup_reply, __xlx_apatb_param_myMacAddress, __xlx_apatb_param_myIpAddress, __xlx_apatb_param_regRequestCount, __xlx_apatb_param_regReplyCount);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_s_axis_stream_buf_final_size = __xlx_apatb_param_s_axis_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_stream_buf[j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(79, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(95, 88);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_stream_buf_final_size, &tcl_file.s_axis_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_stream_buf_final_size, &tcl_file.s_axis_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_stream_buf_final_size, &tcl_file.s_axis_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_s_axis_stream_buf_final_size, &tcl_file.s_axis_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_stream_buf_final_size > 0) {
  long s_axis_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_stream_buf_final_size; j != e; j++) {
    s_axis_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_stream_buf_final_size > 0) {
  long s_axis_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_stream_buf_final_size; j != e; j++) {
    s_axis_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_stream_buf_final_size > 0) {
  long s_axis_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_stream_buf_final_size; j != e; j++) {
    s_axis_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_stream_buf_final_size > 0) {
  long s_axis_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_stream_buf_final_size; j != e; j++) {
    s_axis_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_final_size = __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_size - ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_arp_lookup_request)->size();
// print s_axis_arp_lookup_request_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_s_axis_arp_lookup_request_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_final_size, &tcl_file.s_axis_arp_lookup_request_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_final_size > 0) {
  long s_axis_arp_lookup_request_V_stream_ingress_size = __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_arp_lookup_request_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_final_size; j != e; j++) {
    s_axis_arp_lookup_request_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_arp_lookup_request_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_arp_lookup_request_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_arp_lookup_request_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_arp_lookup_request_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_final_size = __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_size - ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_s_axis_host_arp_lookup_request)->size();
// print s_axis_host_arp_lookup_request_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv_hw;
sc_bv<32> __xlx_tmp_lv;
__xlx_tmp_lv = ((int*)&__xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_final_size, &tcl_file.s_axis_host_arp_lookup_request_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_final_size > 0) {
  long s_axis_host_arp_lookup_request_V_stream_ingress_size = __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_host_arp_lookup_request_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_final_size; j != e; j++) {
    s_axis_host_arp_lookup_request_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_host_arp_lookup_request_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_host_arp_lookup_request_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_host_arp_lookup_request_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_host_arp_lookup_request_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_host_arp_lookup_request_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->size() - __xlx_apatb_param_m_axis_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->empty())
    __xlx_apatb_param_m_axis_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->write(__xlx_apatb_param_m_axis_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_stream_buf[__xlx_apatb_param_m_axis_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_stream_buf[__xlx_apatb_param_m_axis_stream_buf_size+j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(79, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(95, 88);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_stream_buf_final_size, &tcl_file.m_axis_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_stream_buf_final_size, &tcl_file.m_axis_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_stream_buf_final_size, &tcl_file.m_axis_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_m_axis_stream_buf_final_size, &tcl_file.m_axis_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_V_last_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_arp_lookup_reply)->size() - __xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_arp_lookup_reply)->empty())
    __xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_arp_lookup_reply)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_arp_lookup_reply)->write(__xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf[i]);
  }
// print m_axis_arp_lookup_reply_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf[__xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf[__xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf_size+j])[0*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf_final_size, &tcl_file.m_axis_arp_lookup_reply_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_arp_lookup_reply_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_host_arp_lookup_reply)->size() - __xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_host_arp_lookup_reply)->empty())
    __xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_host_arp_lookup_reply)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_host_arp_lookup_reply)->write(__xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf[i]);
  }
// print m_axis_host_arp_lookup_reply_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_host_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf[__xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf[__xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf_size+j])[0*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_host_arp_lookup_reply_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf_final_size, &tcl_file.m_axis_host_arp_lookup_reply_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_host_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_host_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_host_arp_lookup_reply_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_host_arp_lookup_reply_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_host_arp_lookup_reply_V, __xlx_sprintf_buffer.data());
}// print regRequestCount Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_regRequestCount, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regRequestCount);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_regRequestCount, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regRequestCount_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_regRequestCount, __xlx_sprintf_buffer.data());
}
// print regReplyCount Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_regReplyCount, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regReplyCount);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_regReplyCount, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regReplyCount_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_regReplyCount, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
