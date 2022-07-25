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
#define AUTOTB_TVIN_s_axis_V_data_V "../tv/cdatafile/c.icmp_server_top.autotvin_s_axis_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_V_data_V "../tv/cdatafile/c.icmp_server_top.autotvout_s_axis_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_V_keep_V "../tv/cdatafile/c.icmp_server_top.autotvin_s_axis_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_V_keep_V "../tv/cdatafile/c.icmp_server_top.autotvout_s_axis_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_V_strb_V "../tv/cdatafile/c.icmp_server_top.autotvin_s_axis_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_V_strb_V "../tv/cdatafile/c.icmp_server_top.autotvout_s_axis_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_V_last_V "../tv/cdatafile/c.icmp_server_top.autotvin_s_axis_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_V_last_V "../tv/cdatafile/c.icmp_server_top.autotvout_s_axis_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_V_data_V "../tv/stream_size/stream_size_in_s_axis_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_V_keep_V "../tv/stream_size/stream_size_in_s_axis_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_V_strb_V "../tv/stream_size/stream_size_in_s_axis_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_V_last_V "../tv/stream_size/stream_size_in_s_axis_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_udpIn_V_data_V "../tv/cdatafile/c.icmp_server_top.autotvin_udpIn_V_data_V.dat"
#define AUTOTB_TVOUT_udpIn_V_data_V "../tv/cdatafile/c.icmp_server_top.autotvout_udpIn_V_data_V.dat"
#define AUTOTB_TVIN_udpIn_V_keep_V "../tv/cdatafile/c.icmp_server_top.autotvin_udpIn_V_keep_V.dat"
#define AUTOTB_TVOUT_udpIn_V_keep_V "../tv/cdatafile/c.icmp_server_top.autotvout_udpIn_V_keep_V.dat"
#define AUTOTB_TVIN_udpIn_V_strb_V "../tv/cdatafile/c.icmp_server_top.autotvin_udpIn_V_strb_V.dat"
#define AUTOTB_TVOUT_udpIn_V_strb_V "../tv/cdatafile/c.icmp_server_top.autotvout_udpIn_V_strb_V.dat"
#define AUTOTB_TVIN_udpIn_V_last_V "../tv/cdatafile/c.icmp_server_top.autotvin_udpIn_V_last_V.dat"
#define AUTOTB_TVOUT_udpIn_V_last_V "../tv/cdatafile/c.icmp_server_top.autotvout_udpIn_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_udpIn_V_data_V "../tv/stream_size/stream_size_in_udpIn_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_udpIn_V_data_V "../tv/stream_size/stream_ingress_status_udpIn_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_udpIn_V_keep_V "../tv/stream_size/stream_size_in_udpIn_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_udpIn_V_keep_V "../tv/stream_size/stream_ingress_status_udpIn_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_udpIn_V_strb_V "../tv/stream_size/stream_size_in_udpIn_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_udpIn_V_strb_V "../tv/stream_size/stream_ingress_status_udpIn_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_udpIn_V_last_V "../tv/stream_size/stream_size_in_udpIn_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_udpIn_V_last_V "../tv/stream_size/stream_ingress_status_udpIn_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_ttlIn_V_data_V "../tv/cdatafile/c.icmp_server_top.autotvin_ttlIn_V_data_V.dat"
#define AUTOTB_TVOUT_ttlIn_V_data_V "../tv/cdatafile/c.icmp_server_top.autotvout_ttlIn_V_data_V.dat"
#define AUTOTB_TVIN_ttlIn_V_keep_V "../tv/cdatafile/c.icmp_server_top.autotvin_ttlIn_V_keep_V.dat"
#define AUTOTB_TVOUT_ttlIn_V_keep_V "../tv/cdatafile/c.icmp_server_top.autotvout_ttlIn_V_keep_V.dat"
#define AUTOTB_TVIN_ttlIn_V_strb_V "../tv/cdatafile/c.icmp_server_top.autotvin_ttlIn_V_strb_V.dat"
#define AUTOTB_TVOUT_ttlIn_V_strb_V "../tv/cdatafile/c.icmp_server_top.autotvout_ttlIn_V_strb_V.dat"
#define AUTOTB_TVIN_ttlIn_V_last_V "../tv/cdatafile/c.icmp_server_top.autotvin_ttlIn_V_last_V.dat"
#define AUTOTB_TVOUT_ttlIn_V_last_V "../tv/cdatafile/c.icmp_server_top.autotvout_ttlIn_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_ttlIn_V_data_V "../tv/stream_size/stream_size_in_ttlIn_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_data_V "../tv/stream_size/stream_ingress_status_ttlIn_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_ttlIn_V_keep_V "../tv/stream_size/stream_size_in_ttlIn_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_keep_V "../tv/stream_size/stream_ingress_status_ttlIn_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_ttlIn_V_strb_V "../tv/stream_size/stream_size_in_ttlIn_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_strb_V "../tv/stream_size/stream_ingress_status_ttlIn_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_ttlIn_V_last_V "../tv/stream_size/stream_size_in_ttlIn_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_last_V "../tv/stream_size/stream_ingress_status_ttlIn_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_V_data_V "../tv/cdatafile/c.icmp_server_top.autotvin_m_axis_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_V_data_V "../tv/cdatafile/c.icmp_server_top.autotvout_m_axis_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_V_keep_V "../tv/cdatafile/c.icmp_server_top.autotvin_m_axis_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_V_keep_V "../tv/cdatafile/c.icmp_server_top.autotvout_m_axis_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_V_strb_V "../tv/cdatafile/c.icmp_server_top.autotvin_m_axis_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_V_strb_V "../tv/cdatafile/c.icmp_server_top.autotvout_m_axis_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_V_last_V "../tv/cdatafile/c.icmp_server_top.autotvin_m_axis_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_V_last_V "../tv/cdatafile/c.icmp_server_top.autotvout_m_axis_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_V_data_V "../tv/stream_size/stream_size_out_m_axis_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_V_data_V "../tv/stream_size/stream_egress_status_m_axis_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_V_keep_V "../tv/stream_size/stream_size_out_m_axis_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_V_strb_V "../tv/stream_size/stream_size_out_m_axis_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_V_last_V "../tv/stream_size/stream_size_out_m_axis_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_V_last_V "../tv/stream_size/stream_egress_status_m_axis_V_last_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_V_data_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_s_axis_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_V_keep_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_s_axis_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_V_strb_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_s_axis_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_V_last_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_s_axis_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_udpIn_V_data_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_udpIn_V_data_V.dat"
#define AUTOTB_TVOUT_PC_udpIn_V_keep_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_udpIn_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_udpIn_V_strb_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_udpIn_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_udpIn_V_last_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_udpIn_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_ttlIn_V_data_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_ttlIn_V_data_V.dat"
#define AUTOTB_TVOUT_PC_ttlIn_V_keep_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_ttlIn_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_ttlIn_V_strb_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_ttlIn_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_ttlIn_V_last_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_ttlIn_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_V_data_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_m_axis_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_V_keep_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_m_axis_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_V_strb_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_m_axis_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_V_last_V "../tv/rtldatafile/rtl.icmp_server_top.autotvout_m_axis_V_last_V.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  s_axis_V_data_V_depth = 0;
  s_axis_V_keep_V_depth = 0;
  s_axis_V_strb_V_depth = 0;
  s_axis_V_last_V_depth = 0;
  udpIn_V_data_V_depth = 0;
  udpIn_V_keep_V_depth = 0;
  udpIn_V_strb_V_depth = 0;
  udpIn_V_last_V_depth = 0;
  ttlIn_V_data_V_depth = 0;
  ttlIn_V_keep_V_depth = 0;
  ttlIn_V_strb_V_depth = 0;
  ttlIn_V_last_V_depth = 0;
  m_axis_V_data_V_depth = 0;
  m_axis_V_keep_V_depth = 0;
  m_axis_V_strb_V_depth = 0;
  m_axis_V_last_V_depth = 0;
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
  total_list << "{udpIn_V_data_V " << udpIn_V_data_V_depth << "}\n";
  total_list << "{udpIn_V_keep_V " << udpIn_V_keep_V_depth << "}\n";
  total_list << "{udpIn_V_strb_V " << udpIn_V_strb_V_depth << "}\n";
  total_list << "{udpIn_V_last_V " << udpIn_V_last_V_depth << "}\n";
  total_list << "{ttlIn_V_data_V " << ttlIn_V_data_V_depth << "}\n";
  total_list << "{ttlIn_V_keep_V " << ttlIn_V_keep_V_depth << "}\n";
  total_list << "{ttlIn_V_strb_V " << ttlIn_V_strb_V_depth << "}\n";
  total_list << "{ttlIn_V_last_V " << ttlIn_V_last_V_depth << "}\n";
  total_list << "{m_axis_V_data_V " << m_axis_V_data_V_depth << "}\n";
  total_list << "{m_axis_V_keep_V " << m_axis_V_keep_V_depth << "}\n";
  total_list << "{m_axis_V_strb_V " << m_axis_V_strb_V_depth << "}\n";
  total_list << "{m_axis_V_last_V " << m_axis_V_last_V_depth << "}\n";
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
    int udpIn_V_data_V_depth;
    int udpIn_V_keep_V_depth;
    int udpIn_V_strb_V_depth;
    int udpIn_V_last_V_depth;
    int ttlIn_V_data_V_depth;
    int ttlIn_V_keep_V_depth;
    int ttlIn_V_strb_V_depth;
    int ttlIn_V_last_V_depth;
    int m_axis_V_data_V_depth;
    int m_axis_V_keep_V_depth;
    int m_axis_V_strb_V_depth;
    int m_axis_V_last_V_depth;
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
extern "C" void icmp_server_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_icmp_server_top_hw(volatile void * __xlx_apatb_param_s_axis, volatile void * __xlx_apatb_param_udpIn, volatile void * __xlx_apatb_param_ttlIn, volatile void * __xlx_apatb_param_m_axis) {
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
long __xlx_apatb_param_udpIn_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_udpIn_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_udpIn_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_udpIn_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_udpIn)->read();
long __xlx_apatb_param_ttlIn_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_ttlIn_V_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_ttlIn_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_ttlIn_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_ttlIn)->read();
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
}}
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
//udpIn
aesl_fh.touch(AUTOTB_TVIN_udpIn_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_udpIn_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_udpIn_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_udpIn_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_udpIn_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_udpIn_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_udpIn_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_udpIn_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_udpIn_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_udpIn_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_udpIn_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_udpIn_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_last_V);
//ttlIn
aesl_fh.touch(AUTOTB_TVIN_ttlIn_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_ttlIn_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_ttlIn_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_ttlIn_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_ttlIn_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_ttlIn_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_ttlIn_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_ttlIn_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_ttlIn_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_ttlIn_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_ttlIn_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_ttlIn_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_last_V);
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
CodeState = DUMP_INPUTS;
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->empty())
    __xlx_apatb_param_s_axis_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->write(__xlx_apatb_param_s_axis_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_udpIn_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_udpIn)->empty())
    __xlx_apatb_param_udpIn_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_udpIn)->read());
  for (int i = 0; i < __xlx_apatb_param_udpIn_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_udpIn)->write(__xlx_apatb_param_udpIn_stream_buf[i]);
  }
long __xlx_apatb_param_udpIn_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_udpIn)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_ttlIn_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_ttlIn)->empty())
    __xlx_apatb_param_ttlIn_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_ttlIn)->read());
  for (int i = 0; i < __xlx_apatb_param_ttlIn_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_ttlIn)->write(__xlx_apatb_param_ttlIn_stream_buf[i]);
  }
long __xlx_apatb_param_ttlIn_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_ttlIn)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_stream_buf;
long __xlx_apatb_param_m_axis_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis)->size();
CodeState = CALL_C_DUT;
icmp_server_top_hw_stub_wrapper(__xlx_apatb_param_s_axis, __xlx_apatb_param_udpIn, __xlx_apatb_param_ttlIn, __xlx_apatb_param_m_axis);
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
}long __xlx_apatb_param_udpIn_stream_buf_final_size = __xlx_apatb_param_udpIn_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_udpIn)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_udpIn_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_udpIn_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_udpIn_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_udpIn_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_udpIn_stream_buf[j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_udpIn_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(79, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(95, 88);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_udpIn_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_udpIn_stream_buf_final_size, &tcl_file.udpIn_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_udpIn_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_udpIn_stream_buf_final_size, &tcl_file.udpIn_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_udpIn_stream_buf_final_size, &tcl_file.udpIn_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_udpIn_stream_buf_final_size, &tcl_file.udpIn_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_udpIn_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_udpIn_stream_buf_final_size > 0) {
  long udpIn_V_data_V_stream_ingress_size = __xlx_apatb_param_udpIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_udpIn_stream_buf_final_size; j != e; j++) {
    udpIn_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long udpIn_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_udpIn_stream_buf_final_size > 0) {
  long udpIn_V_keep_V_stream_ingress_size = __xlx_apatb_param_udpIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_udpIn_stream_buf_final_size; j != e; j++) {
    udpIn_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long udpIn_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_udpIn_stream_buf_final_size > 0) {
  long udpIn_V_strb_V_stream_ingress_size = __xlx_apatb_param_udpIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_udpIn_stream_buf_final_size; j != e; j++) {
    udpIn_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long udpIn_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_udpIn_stream_buf_final_size > 0) {
  long udpIn_V_last_V_stream_ingress_size = __xlx_apatb_param_udpIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_udpIn_stream_buf_final_size; j != e; j++) {
    udpIn_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long udpIn_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", udpIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_udpIn_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_udpIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_udpIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_udpIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_udpIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_udpIn_V_last_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_ttlIn_stream_buf_final_size = __xlx_apatb_param_ttlIn_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_ttlIn)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_ttlIn_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_ttlIn_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_ttlIn_stream_buf[j])[0*2+1];
sc_bv<64> __xlx_tmp_0_lv = __xlx_tmp_lv.range(63, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(79, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(95, 88);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_ttlIn_stream_buf_final_size, &tcl_file.ttlIn_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_ttlIn_stream_buf_final_size, &tcl_file.ttlIn_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_ttlIn_stream_buf_final_size, &tcl_file.ttlIn_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_ttlIn_stream_buf_final_size, &tcl_file.ttlIn_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_ttlIn_V_last_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_ttlIn_stream_buf_final_size > 0) {
  long ttlIn_V_data_V_stream_ingress_size = __xlx_apatb_param_ttlIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_ttlIn_stream_buf_final_size; j != e; j++) {
    ttlIn_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long ttlIn_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_ttlIn_stream_buf_final_size > 0) {
  long ttlIn_V_keep_V_stream_ingress_size = __xlx_apatb_param_ttlIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_ttlIn_stream_buf_final_size; j != e; j++) {
    ttlIn_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long ttlIn_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_ttlIn_stream_buf_final_size > 0) {
  long ttlIn_V_strb_V_stream_ingress_size = __xlx_apatb_param_ttlIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_ttlIn_stream_buf_final_size; j != e; j++) {
    ttlIn_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long ttlIn_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_ttlIn_stream_buf_final_size > 0) {
  long ttlIn_V_last_V_stream_ingress_size = __xlx_apatb_param_ttlIn_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_ttlIn_stream_buf_final_size; j != e; j++) {
    ttlIn_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long ttlIn_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", ttlIn_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ttlIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ttlIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ttlIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_ttlIn_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_ttlIn_V_last_V, __xlx_sprintf_buffer.data());
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
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
