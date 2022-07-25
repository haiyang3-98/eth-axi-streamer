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
#define AUTOTB_TVIN_s_axis_lup_req_V "../tv/cdatafile/c.hash_table_top.autotvin_s_axis_lup_req_V.dat"
#define AUTOTB_TVOUT_s_axis_lup_req_V "../tv/cdatafile/c.hash_table_top.autotvout_s_axis_lup_req_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_lup_req_V "../tv/stream_size/stream_size_in_s_axis_lup_req_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_lup_req_V "../tv/stream_size/stream_ingress_status_s_axis_lup_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_upd_req_V "../tv/cdatafile/c.hash_table_top.autotvin_s_axis_upd_req_V.dat"
#define AUTOTB_TVOUT_s_axis_upd_req_V "../tv/cdatafile/c.hash_table_top.autotvout_s_axis_upd_req_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_upd_req_V "../tv/stream_size/stream_size_in_s_axis_upd_req_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_upd_req_V "../tv/stream_size/stream_ingress_status_s_axis_upd_req_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_lup_rsp_V "../tv/cdatafile/c.hash_table_top.autotvin_m_axis_lup_rsp_V.dat"
#define AUTOTB_TVOUT_m_axis_lup_rsp_V "../tv/cdatafile/c.hash_table_top.autotvout_m_axis_lup_rsp_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_lup_rsp_V "../tv/stream_size/stream_size_out_m_axis_lup_rsp_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_lup_rsp_V "../tv/stream_size/stream_egress_status_m_axis_lup_rsp_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_upd_rsp_V "../tv/cdatafile/c.hash_table_top.autotvin_m_axis_upd_rsp_V.dat"
#define AUTOTB_TVOUT_m_axis_upd_rsp_V "../tv/cdatafile/c.hash_table_top.autotvout_m_axis_upd_rsp_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_upd_rsp_V "../tv/stream_size/stream_size_out_m_axis_upd_rsp_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_upd_rsp_V "../tv/stream_size/stream_egress_status_m_axis_upd_rsp_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_regInsertFailureCount "../tv/cdatafile/c.hash_table_top.autotvin_regInsertFailureCount.dat"
#define AUTOTB_TVOUT_regInsertFailureCount "../tv/cdatafile/c.hash_table_top.autotvout_regInsertFailureCount.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_lup_req_V "../tv/rtldatafile/rtl.hash_table_top.autotvout_s_axis_lup_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_upd_req_V "../tv/rtldatafile/rtl.hash_table_top.autotvout_s_axis_upd_req_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_lup_rsp_V "../tv/rtldatafile/rtl.hash_table_top.autotvout_m_axis_lup_rsp_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_upd_rsp_V "../tv/rtldatafile/rtl.hash_table_top.autotvout_m_axis_upd_rsp_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_regInsertFailureCount "../tv/rtldatafile/rtl.hash_table_top.autotvout_regInsertFailureCount.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  s_axis_lup_req_V_depth = 0;
  s_axis_upd_req_V_depth = 0;
  m_axis_lup_rsp_V_depth = 0;
  m_axis_upd_rsp_V_depth = 0;
  regInsertFailureCount_depth = 0;
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
  total_list << "{s_axis_lup_req_V " << s_axis_lup_req_V_depth << "}\n";
  total_list << "{s_axis_upd_req_V " << s_axis_upd_req_V_depth << "}\n";
  total_list << "{m_axis_lup_rsp_V " << m_axis_lup_rsp_V_depth << "}\n";
  total_list << "{m_axis_upd_rsp_V " << m_axis_upd_rsp_V_depth << "}\n";
  total_list << "{regInsertFailureCount " << regInsertFailureCount_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int s_axis_lup_req_V_depth;
    int s_axis_upd_req_V_depth;
    int m_axis_lup_rsp_V_depth;
    int m_axis_upd_rsp_V_depth;
    int regInsertFailureCount_depth;
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
struct __cosim_s18__ { char data[24]; };
extern "C" void hash_table_top_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_hash_table_top_hw(volatile void * __xlx_apatb_param_s_axis_lup_req, volatile void * __xlx_apatb_param_s_axis_upd_req, volatile void * __xlx_apatb_param_m_axis_lup_rsp, volatile void * __xlx_apatb_param_m_axis_upd_rsp, volatile void * __xlx_apatb_param_regInsertFailureCount) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_s_axis_lup_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_lup_req_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_lup_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_lup_req_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_lup_req)->read();
long __xlx_apatb_param_s_axis_upd_req_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_upd_req_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_upd_req_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_upd_req_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s18__>*)__xlx_apatb_param_s_axis_upd_req)->read();
long __xlx_apatb_param_m_axis_lup_rsp_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_lup_rsp_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_lup_rsp_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_lup_rsp_V);
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
          std::vector<sc_bv<128> > m_axis_lup_rsp_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_lup_rsp_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_lup_rsp_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_lup_rsp_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_lup_rsp_V_pc_buffer[j].range(127,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_lup_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_upd_rsp_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_upd_rsp_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_upd_rsp_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_upd_rsp_V);
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
          std::vector<sc_bv<192> > m_axis_upd_rsp_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_upd_rsp_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_upd_rsp_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s18__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*3+0] = m_axis_upd_rsp_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*3+1] = m_axis_upd_rsp_V_pc_buffer[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*3+2] = m_axis_upd_rsp_V_pc_buffer[j].range(191,128).to_int64();
((hls::stream<__cosim_s18__>*)__xlx_apatb_param_m_axis_upd_rsp)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_regInsertFailureCount);
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
          std::vector<sc_bv<16> > regInsertFailureCount_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "regInsertFailureCount");
  
            // push token into output port buffer
            if (AESL_token != "") {
              regInsertFailureCount_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((short*)__xlx_apatb_param_regInsertFailureCount)[0] = regInsertFailureCount_pc_buffer[0].to_int64();
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
//s_axis_lup_req_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_lup_req_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_lup_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_lup_req_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_lup_req_V);
//s_axis_upd_req_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_upd_req_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_upd_req_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_upd_req_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_upd_req_V);
//m_axis_lup_rsp_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_lup_rsp_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_lup_rsp_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_lup_rsp_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_lup_rsp_V);
//m_axis_upd_rsp_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_upd_rsp_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_upd_rsp_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_upd_rsp_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_upd_rsp_V);
//regInsertFailureCount
aesl_fh.touch(AUTOTB_TVIN_regInsertFailureCount);
aesl_fh.touch(AUTOTB_TVOUT_regInsertFailureCount);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_lup_req_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_lup_req)->empty())
    __xlx_apatb_param_s_axis_lup_req_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_lup_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_lup_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_lup_req)->write(__xlx_apatb_param_s_axis_lup_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_lup_req_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_lup_req)->size();
std::vector<__cosim_s18__> __xlx_apatb_param_s_axis_upd_req_stream_buf;
{
  while (!((hls::stream<__cosim_s18__>*)__xlx_apatb_param_s_axis_upd_req)->empty())
    __xlx_apatb_param_s_axis_upd_req_stream_buf.push_back(((hls::stream<__cosim_s18__>*)__xlx_apatb_param_s_axis_upd_req)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_upd_req_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s18__>*)__xlx_apatb_param_s_axis_upd_req)->write(__xlx_apatb_param_s_axis_upd_req_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_upd_req_stream_buf_size = ((hls::stream<__cosim_s18__>*)__xlx_apatb_param_s_axis_upd_req)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_lup_rsp_stream_buf;
long __xlx_apatb_param_m_axis_lup_rsp_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_lup_rsp)->size();
std::vector<__cosim_s18__> __xlx_apatb_param_m_axis_upd_rsp_stream_buf;
long __xlx_apatb_param_m_axis_upd_rsp_stream_buf_size = ((hls::stream<__cosim_s18__>*)__xlx_apatb_param_m_axis_upd_rsp)->size();
// print regInsertFailureCount Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_regInsertFailureCount, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regInsertFailureCount);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_regInsertFailureCount, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regInsertFailureCount_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_regInsertFailureCount, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
hash_table_top_hw_stub_wrapper(__xlx_apatb_param_s_axis_lup_req, __xlx_apatb_param_s_axis_upd_req, __xlx_apatb_param_m_axis_lup_rsp, __xlx_apatb_param_m_axis_upd_rsp, __xlx_apatb_param_regInsertFailureCount);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_s_axis_lup_req_stream_buf_final_size = __xlx_apatb_param_s_axis_lup_req_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_lup_req)->size();
// print s_axis_lup_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_lup_req_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv_hw;
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_lup_req_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_lup_req_stream_buf[j])[0*2+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_lup_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_lup_req_stream_buf_final_size, &tcl_file.s_axis_lup_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_lup_req_stream_buf_final_size > 0) {
  long s_axis_lup_req_V_stream_ingress_size = __xlx_apatb_param_s_axis_lup_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_lup_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_lup_req_stream_buf_final_size; j != e; j++) {
    s_axis_lup_req_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_lup_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_lup_req_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_lup_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_lup_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_lup_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_lup_req_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_upd_req_stream_buf_final_size = __xlx_apatb_param_s_axis_upd_req_stream_buf_size - ((hls::stream<__cosim_s18__>*)__xlx_apatb_param_s_axis_upd_req)->size();
// print s_axis_upd_req_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_upd_req_stream_buf_final_size; j != e; ++j) {
sc_bv<192> __xlx_tmp_lv_hw;
sc_bv<192> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_upd_req_stream_buf[j])[0*3+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_upd_req_stream_buf[j])[0*3+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_upd_req_stream_buf[j])[0*3+2];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_upd_req_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_upd_req_stream_buf_final_size, &tcl_file.s_axis_upd_req_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_upd_req_stream_buf_final_size > 0) {
  long s_axis_upd_req_V_stream_ingress_size = __xlx_apatb_param_s_axis_upd_req_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_upd_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_upd_req_stream_buf_final_size; j != e; j++) {
    s_axis_upd_req_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_upd_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_upd_req_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_upd_req_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_upd_req_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_upd_req_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_upd_req_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_lup_rsp_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_lup_rsp)->size() - __xlx_apatb_param_m_axis_lup_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_lup_rsp)->empty())
    __xlx_apatb_param_m_axis_lup_rsp_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_lup_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_lup_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_lup_rsp)->write(__xlx_apatb_param_m_axis_lup_rsp_stream_buf[i]);
  }
// print m_axis_lup_rsp_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_lup_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_lup_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_lup_rsp_stream_buf[__xlx_apatb_param_m_axis_lup_rsp_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_lup_rsp_stream_buf[__xlx_apatb_param_m_axis_lup_rsp_stream_buf_size+j])[0*2+1];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_lup_rsp_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_lup_rsp_stream_buf_final_size, &tcl_file.m_axis_lup_rsp_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_lup_rsp_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_lup_rsp_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_lup_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_lup_rsp_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_lup_rsp_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_upd_rsp_stream_buf_final_size = ((hls::stream<__cosim_s18__>*)__xlx_apatb_param_m_axis_upd_rsp)->size() - __xlx_apatb_param_m_axis_upd_rsp_stream_buf_size;
{
  while (!((hls::stream<__cosim_s18__>*)__xlx_apatb_param_m_axis_upd_rsp)->empty())
    __xlx_apatb_param_m_axis_upd_rsp_stream_buf.push_back(((hls::stream<__cosim_s18__>*)__xlx_apatb_param_m_axis_upd_rsp)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_upd_rsp_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s18__>*)__xlx_apatb_param_m_axis_upd_rsp)->write(__xlx_apatb_param_m_axis_upd_rsp_stream_buf[i]);
  }
// print m_axis_upd_rsp_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_upd_rsp_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_upd_rsp_stream_buf_final_size; j != e; ++j) {
sc_bv<192> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_upd_rsp_stream_buf[__xlx_apatb_param_m_axis_upd_rsp_stream_buf_size+j])[0*3+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_upd_rsp_stream_buf[__xlx_apatb_param_m_axis_upd_rsp_stream_buf_size+j])[0*3+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_upd_rsp_stream_buf[__xlx_apatb_param_m_axis_upd_rsp_stream_buf_size+j])[0*3+2];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_upd_rsp_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_upd_rsp_stream_buf_final_size, &tcl_file.m_axis_upd_rsp_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_upd_rsp_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_upd_rsp_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_upd_rsp_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_upd_rsp_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_upd_rsp_V, __xlx_sprintf_buffer.data());
}// print regInsertFailureCount Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_regInsertFailureCount, __xlx_sprintf_buffer.data());
  {
    sc_bv<16> __xlx_tmp_lv = *((short*)__xlx_apatb_param_regInsertFailureCount);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_regInsertFailureCount, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.regInsertFailureCount_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_regInsertFailureCount, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
