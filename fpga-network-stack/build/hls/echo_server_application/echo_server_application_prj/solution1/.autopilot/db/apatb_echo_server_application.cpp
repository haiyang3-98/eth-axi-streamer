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
#define AUTOTB_TVIN_m_axis_listen_port_V "../tv/cdatafile/c.echo_server_application.autotvin_m_axis_listen_port_V.dat"
#define AUTOTB_TVOUT_m_axis_listen_port_V "../tv/cdatafile/c.echo_server_application.autotvout_m_axis_listen_port_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_V "../tv/stream_size/stream_size_out_m_axis_listen_port_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_listen_port_V "../tv/stream_size/stream_egress_status_m_axis_listen_port_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_listen_port_status_V "../tv/cdatafile/c.echo_server_application.autotvin_s_axis_listen_port_status_V.dat"
#define AUTOTB_TVOUT_s_axis_listen_port_status_V "../tv/cdatafile/c.echo_server_application.autotvout_s_axis_listen_port_status_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status_V "../tv/stream_size/stream_size_in_s_axis_listen_port_status_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status_V "../tv/stream_size/stream_ingress_status_s_axis_listen_port_status_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_notifications_V "../tv/cdatafile/c.echo_server_application.autotvin_s_axis_notifications_V.dat"
#define AUTOTB_TVOUT_s_axis_notifications_V "../tv/cdatafile/c.echo_server_application.autotvout_s_axis_notifications_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_notifications_V "../tv/stream_size/stream_size_in_s_axis_notifications_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications_V "../tv/stream_size/stream_ingress_status_s_axis_notifications_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_read_package_V "../tv/cdatafile/c.echo_server_application.autotvin_m_axis_read_package_V.dat"
#define AUTOTB_TVOUT_m_axis_read_package_V "../tv/cdatafile/c.echo_server_application.autotvout_m_axis_read_package_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_read_package_V "../tv/stream_size/stream_size_out_m_axis_read_package_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_read_package_V "../tv/stream_size/stream_egress_status_m_axis_read_package_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rx_metadata_V "../tv/cdatafile/c.echo_server_application.autotvin_s_axis_rx_metadata_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_metadata_V "../tv/cdatafile/c.echo_server_application.autotvout_s_axis_rx_metadata_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata_V "../tv/stream_size/stream_size_in_s_axis_rx_metadata_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata_V "../tv/stream_size/stream_ingress_status_s_axis_rx_metadata_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rx_data_V "../tv/cdatafile/c.echo_server_application.autotvin_s_axis_rx_data_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V "../tv/cdatafile/c.echo_server_application.autotvout_s_axis_rx_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_open_connection_V "../tv/cdatafile/c.echo_server_application.autotvin_m_axis_open_connection_V.dat"
#define AUTOTB_TVOUT_m_axis_open_connection_V "../tv/cdatafile/c.echo_server_application.autotvout_m_axis_open_connection_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_open_connection_V "../tv/stream_size/stream_size_out_m_axis_open_connection_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_open_connection_V "../tv/stream_size/stream_egress_status_m_axis_open_connection_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_open_status_V "../tv/cdatafile/c.echo_server_application.autotvin_s_axis_open_status_V.dat"
#define AUTOTB_TVOUT_s_axis_open_status_V "../tv/cdatafile/c.echo_server_application.autotvout_s_axis_open_status_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_open_status_V "../tv/stream_size/stream_size_in_s_axis_open_status_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status_V "../tv/stream_size/stream_ingress_status_s_axis_open_status_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_close_connection_V "../tv/cdatafile/c.echo_server_application.autotvin_m_axis_close_connection_V.dat"
#define AUTOTB_TVOUT_m_axis_close_connection_V "../tv/cdatafile/c.echo_server_application.autotvout_m_axis_close_connection_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_close_connection_V "../tv/stream_size/stream_size_out_m_axis_close_connection_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_close_connection_V "../tv/stream_size/stream_egress_status_m_axis_close_connection_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_metadata_V "../tv/cdatafile/c.echo_server_application.autotvin_m_axis_tx_metadata_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_metadata_V "../tv/cdatafile/c.echo_server_application.autotvout_m_axis_tx_metadata_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata_V "../tv/stream_size/stream_size_out_m_axis_tx_metadata_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_metadata_V "../tv/stream_size/stream_egress_status_m_axis_tx_metadata_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_data_V "../tv/cdatafile/c.echo_server_application.autotvin_m_axis_tx_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V "../tv/cdatafile/c.echo_server_application.autotvout_m_axis_tx_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_tx_status_V "../tv/cdatafile/c.echo_server_application.autotvin_s_axis_tx_status_V.dat"
#define AUTOTB_TVOUT_s_axis_tx_status_V "../tv/cdatafile/c.echo_server_application.autotvout_s_axis_tx_status_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_tx_status_V "../tv/stream_size/stream_size_in_s_axis_tx_status_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status_V "../tv/stream_size/stream_ingress_status_s_axis_tx_status_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_listen_port_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_m_axis_listen_port_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_listen_port_status_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_s_axis_listen_port_status_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_notifications_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_s_axis_notifications_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_read_package_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_m_axis_read_package_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rx_metadata_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_s_axis_rx_metadata_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_s_axis_rx_data_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_open_connection_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_m_axis_open_connection_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_open_status_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_s_axis_open_status_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_close_connection_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_m_axis_close_connection_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_metadata_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_m_axis_tx_metadata_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_m_axis_tx_data_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_tx_status_V "../tv/rtldatafile/rtl.echo_server_application.autotvout_s_axis_tx_status_V.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  m_axis_listen_port_V_depth = 0;
  s_axis_listen_port_status_V_depth = 0;
  s_axis_notifications_V_depth = 0;
  m_axis_read_package_V_depth = 0;
  s_axis_rx_metadata_V_depth = 0;
  s_axis_rx_data_V_depth = 0;
  m_axis_open_connection_V_depth = 0;
  s_axis_open_status_V_depth = 0;
  m_axis_close_connection_V_depth = 0;
  m_axis_tx_metadata_V_depth = 0;
  m_axis_tx_data_V_depth = 0;
  s_axis_tx_status_V_depth = 0;
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
  total_list << "{m_axis_listen_port_V " << m_axis_listen_port_V_depth << "}\n";
  total_list << "{s_axis_listen_port_status_V " << s_axis_listen_port_status_V_depth << "}\n";
  total_list << "{s_axis_notifications_V " << s_axis_notifications_V_depth << "}\n";
  total_list << "{m_axis_read_package_V " << m_axis_read_package_V_depth << "}\n";
  total_list << "{s_axis_rx_metadata_V " << s_axis_rx_metadata_V_depth << "}\n";
  total_list << "{s_axis_rx_data_V " << s_axis_rx_data_V_depth << "}\n";
  total_list << "{m_axis_open_connection_V " << m_axis_open_connection_V_depth << "}\n";
  total_list << "{s_axis_open_status_V " << s_axis_open_status_V_depth << "}\n";
  total_list << "{m_axis_close_connection_V " << m_axis_close_connection_V_depth << "}\n";
  total_list << "{m_axis_tx_metadata_V " << m_axis_tx_metadata_V_depth << "}\n";
  total_list << "{m_axis_tx_data_V " << m_axis_tx_data_V_depth << "}\n";
  total_list << "{s_axis_tx_status_V " << s_axis_tx_status_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int m_axis_listen_port_V_depth;
    int s_axis_listen_port_status_V_depth;
    int s_axis_notifications_V_depth;
    int m_axis_read_package_V_depth;
    int s_axis_rx_metadata_V_depth;
    int s_axis_rx_data_V_depth;
    int m_axis_open_connection_V_depth;
    int s_axis_open_status_V_depth;
    int m_axis_close_connection_V_depth;
    int m_axis_tx_metadata_V_depth;
    int m_axis_tx_data_V_depth;
    int s_axis_tx_status_V_depth;
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
struct __cosim_s2__ { char data[2]; };
struct __cosim_sC__ { char data[12]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s80__ { char data[128]; };
struct __cosim_s8__ { char data[8]; };
extern "C" void echo_server_application_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_echo_server_application_hw(volatile void * __xlx_apatb_param_m_axis_listen_port, volatile void * __xlx_apatb_param_s_axis_listen_port_status, volatile void * __xlx_apatb_param_s_axis_notifications, volatile void * __xlx_apatb_param_m_axis_read_package, volatile void * __xlx_apatb_param_s_axis_rx_metadata, volatile void * __xlx_apatb_param_s_axis_rx_data, volatile void * __xlx_apatb_param_m_axis_open_connection, volatile void * __xlx_apatb_param_s_axis_open_status, volatile void * __xlx_apatb_param_m_axis_close_connection, volatile void * __xlx_apatb_param_m_axis_tx_metadata, volatile void * __xlx_apatb_param_m_axis_tx_data, volatile void * __xlx_apatb_param_s_axis_tx_status) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_m_axis_listen_port_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_listen_port_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_listen_port_V);
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
          std::vector<sc_bv<16> > m_axis_listen_port_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_listen_port_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_listen_port_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;

            ((short*)&xlx_stream_elt)[0] = m_axis_listen_port_V_pc_buffer[j].to_int64();
          ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_listen_port_status_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_listen_port_status_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_listen_port_status_V_stream_buf_final_size; ++i)((hls::stream<char>*)__xlx_apatb_param_s_axis_listen_port_status)->read();
long __xlx_apatb_param_s_axis_notifications_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_notifications_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_notifications_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_notifications_V_stream_buf_final_size; ++i)((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_notifications)->read();
long __xlx_apatb_param_m_axis_read_package_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_read_package_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_read_package_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_read_package_V);
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
          std::vector<sc_bv<32> > m_axis_read_package_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_read_package_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_read_package_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s4__ xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = m_axis_read_package_V_pc_buffer[j].to_int64();
          ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_read_package)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_rx_metadata_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rx_metadata_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rx_metadata_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->read();
long __xlx_apatb_param_s_axis_rx_data_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rx_data_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rx_data)->read();
long __xlx_apatb_param_m_axis_open_connection_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_open_connection_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_open_connection_V);
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
          std::vector<sc_bv<64> > m_axis_open_connection_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_open_connection_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_open_connection_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s8__ xlx_stream_elt;

            ((long long*)&xlx_stream_elt)[0] = m_axis_open_connection_V_pc_buffer[j].to_int64();
          ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_open_connection)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_open_status_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_open_status_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_open_status_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_open_status_V_stream_buf_final_size; ++i)((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_open_status)->read();
long __xlx_apatb_param_m_axis_close_connection_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_close_connection_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_close_connection_V);
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
          std::vector<sc_bv<16> > m_axis_close_connection_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_close_connection_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_close_connection_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;

            ((short*)&xlx_stream_elt)[0] = m_axis_close_connection_V_pc_buffer[j].to_int64();
          ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_tx_metadata_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_tx_metadata_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_metadata_V);
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
          std::vector<sc_bv<32> > m_axis_tx_metadata_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_metadata_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_metadata_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s4__ xlx_stream_elt;

            ((int*)&xlx_stream_elt)[0] = m_axis_tx_metadata_V_pc_buffer[j].to_int64();
          ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_tx_metadata)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_tx_data_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_tx_data_V_stream_buf_final_size = atoi(AESL_token.c_str());

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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V);
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
          std::vector<sc_bv<1024> > m_axis_tx_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s80__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*16+0] = m_axis_tx_data_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*16+1] = m_axis_tx_data_V_pc_buffer[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*16+2] = m_axis_tx_data_V_pc_buffer[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*16+3] = m_axis_tx_data_V_pc_buffer[j].range(255,192).to_int64();
((long long*)&xlx_stream_elt)[0*16+4] = m_axis_tx_data_V_pc_buffer[j].range(319,256).to_int64();
((long long*)&xlx_stream_elt)[0*16+5] = m_axis_tx_data_V_pc_buffer[j].range(383,320).to_int64();
((long long*)&xlx_stream_elt)[0*16+6] = m_axis_tx_data_V_pc_buffer[j].range(447,384).to_int64();
((long long*)&xlx_stream_elt)[0*16+7] = m_axis_tx_data_V_pc_buffer[j].range(511,448).to_int64();
((long long*)&xlx_stream_elt)[0*16+8] = m_axis_tx_data_V_pc_buffer[j].range(575,512).to_int64();
((long long*)&xlx_stream_elt)[0*16+9] = m_axis_tx_data_V_pc_buffer[j].range(639,576).to_int64();
((long long*)&xlx_stream_elt)[0*16+10] = m_axis_tx_data_V_pc_buffer[j].range(703,640).to_int64();
((long long*)&xlx_stream_elt)[0*16+11] = m_axis_tx_data_V_pc_buffer[j].range(767,704).to_int64();
((long long*)&xlx_stream_elt)[0*16+12] = m_axis_tx_data_V_pc_buffer[j].range(831,768).to_int64();
((long long*)&xlx_stream_elt)[0*16+13] = m_axis_tx_data_V_pc_buffer[j].range(895,832).to_int64();
((long long*)&xlx_stream_elt)[0*16+14] = m_axis_tx_data_V_pc_buffer[j].range(959,896).to_int64();
((long long*)&xlx_stream_elt)[0*16+15] = m_axis_tx_data_V_pc_buffer[j].range(1023,960).to_int64();
((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tx_data)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_tx_status_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_tx_status_V);
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
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_tx_status_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_tx_status_V_stream_buf_final_size; ++i)((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_tx_status)->read();

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//m_axis_listen_port_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_listen_port_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_listen_port_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_listen_port_V);
//s_axis_listen_port_status_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_listen_port_status_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_listen_port_status_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status_V);
//s_axis_notifications_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_notifications_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_notifications_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_notifications_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications_V);
//m_axis_read_package_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_read_package_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_read_package_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_read_package_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_read_package_V);
//s_axis_rx_metadata_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_rx_metadata_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_rx_metadata_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata_V);
//s_axis_rx_data_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_rx_data_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_rx_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V);
//m_axis_open_connection_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_open_connection_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_open_connection_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_open_connection_V);
//s_axis_open_status_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_open_status_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_open_status_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_open_status_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status_V);
//m_axis_close_connection_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_close_connection_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_close_connection_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_close_connection_V);
//m_axis_tx_metadata_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_tx_metadata_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tx_metadata_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_metadata_V);
//m_axis_tx_data_V
aesl_fh.touch(AUTOTB_TVIN_m_axis_tx_data_V);
aesl_fh.touch(AUTOTB_TVOUT_m_axis_tx_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V);
//s_axis_tx_status_V
aesl_fh.touch(AUTOTB_TVIN_s_axis_tx_status_V);
aesl_fh.touch(AUTOTB_TVOUT_s_axis_tx_status_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_tx_status_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status_V);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s2__> __xlx_apatb_param_m_axis_listen_port_stream_buf;
long __xlx_apatb_param_m_axis_listen_port_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->size();
std::vector<char> __xlx_apatb_param_s_axis_listen_port_status_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_listen_port_status)->empty())
    __xlx_apatb_param_s_axis_listen_port_status_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_listen_port_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_listen_port_status_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_listen_port_status)->write(__xlx_apatb_param_s_axis_listen_port_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_listen_port_status_stream_buf_size = ((hls::stream<char>*)__xlx_apatb_param_s_axis_listen_port_status)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_s_axis_notifications_stream_buf;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_notifications)->empty())
    __xlx_apatb_param_s_axis_notifications_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_notifications)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_notifications_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_notifications)->write(__xlx_apatb_param_s_axis_notifications_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_notifications_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_notifications)->size();
std::vector<__cosim_s4__> __xlx_apatb_param_m_axis_read_package_stream_buf;
long __xlx_apatb_param_m_axis_read_package_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_read_package)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_s_axis_rx_metadata_stream_buf;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->empty())
    __xlx_apatb_param_s_axis_rx_metadata_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_metadata_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->write(__xlx_apatb_param_s_axis_rx_metadata_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_s_axis_rx_data_stream_buf;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rx_data)->empty())
    __xlx_apatb_param_s_axis_rx_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rx_data)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rx_data)->write(__xlx_apatb_param_s_axis_rx_data_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rx_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rx_data)->size();
std::vector<__cosim_s8__> __xlx_apatb_param_m_axis_open_connection_stream_buf;
long __xlx_apatb_param_m_axis_open_connection_stream_buf_size = ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_open_connection)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_s_axis_open_status_stream_buf;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_open_status)->empty())
    __xlx_apatb_param_s_axis_open_status_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_open_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_open_status_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_open_status)->write(__xlx_apatb_param_s_axis_open_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_open_status_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_open_status)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_m_axis_close_connection_stream_buf;
long __xlx_apatb_param_m_axis_close_connection_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->size();
std::vector<__cosim_s4__> __xlx_apatb_param_m_axis_tx_metadata_stream_buf;
long __xlx_apatb_param_m_axis_tx_metadata_stream_buf_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_tx_metadata)->size();
std::vector<__cosim_s80__> __xlx_apatb_param_m_axis_tx_data_stream_buf;
long __xlx_apatb_param_m_axis_tx_data_stream_buf_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tx_data)->size();
std::vector<__cosim_sC__> __xlx_apatb_param_s_axis_tx_status_stream_buf;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_tx_status)->empty())
    __xlx_apatb_param_s_axis_tx_status_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_tx_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_tx_status_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_tx_status)->write(__xlx_apatb_param_s_axis_tx_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_tx_status_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_tx_status)->size();
CodeState = CALL_C_DUT;
echo_server_application_hw_stub_wrapper(__xlx_apatb_param_m_axis_listen_port, __xlx_apatb_param_s_axis_listen_port_status, __xlx_apatb_param_s_axis_notifications, __xlx_apatb_param_m_axis_read_package, __xlx_apatb_param_s_axis_rx_metadata, __xlx_apatb_param_s_axis_rx_data, __xlx_apatb_param_m_axis_open_connection, __xlx_apatb_param_s_axis_open_status, __xlx_apatb_param_m_axis_close_connection, __xlx_apatb_param_m_axis_tx_metadata, __xlx_apatb_param_m_axis_tx_data, __xlx_apatb_param_s_axis_tx_status);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_m_axis_listen_port_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->size() - __xlx_apatb_param_m_axis_listen_port_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->empty())
    __xlx_apatb_param_m_axis_listen_port_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_listen_port_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->write(__xlx_apatb_param_m_axis_listen_port_stream_buf[i]);
  }
// print m_axis_listen_port_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_listen_port_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_m_axis_listen_port_stream_buf[__xlx_apatb_param_m_axis_listen_port_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_listen_port_stream_buf_final_size, &tcl_file.m_axis_listen_port_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_listen_port_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_listen_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_listen_port_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size = __xlx_apatb_param_s_axis_listen_port_status_stream_buf_size - ((hls::stream<char>*)__xlx_apatb_param_s_axis_listen_port_status)->size();
// print s_axis_listen_port_status_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv_hw;
sc_bv<8> __xlx_tmp_lv;
__xlx_tmp_lv = ((char*)&__xlx_apatb_param_s_axis_listen_port_status_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size, &tcl_file.s_axis_listen_port_status_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size > 0) {
  long s_axis_listen_port_status_V_stream_ingress_size = __xlx_apatb_param_s_axis_listen_port_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size; j != e; j++) {
    s_axis_listen_port_status_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_listen_port_status_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_listen_port_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_listen_port_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_listen_port_status_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_notifications_stream_buf_final_size = __xlx_apatb_param_s_axis_notifications_stream_buf_size - ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_notifications)->size();
// print s_axis_notifications_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_notifications_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_notifications_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv_hw;
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_notifications_stream_buf[j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_s_axis_notifications_stream_buf[j])[0*1+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_notifications_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_notifications_stream_buf_final_size, &tcl_file.s_axis_notifications_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_notifications_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_notifications_stream_buf_final_size > 0) {
  long s_axis_notifications_V_stream_ingress_size = __xlx_apatb_param_s_axis_notifications_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_notifications_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_notifications_stream_buf_final_size; j != e; j++) {
    s_axis_notifications_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_notifications_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_notifications_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_notifications_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_notifications_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_notifications_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_notifications_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_notifications_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_notifications_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_read_package_stream_buf_final_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_read_package)->size() - __xlx_apatb_param_m_axis_read_package_stream_buf_size;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_read_package)->empty())
    __xlx_apatb_param_m_axis_read_package_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_read_package)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_read_package_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_read_package)->write(__xlx_apatb_param_m_axis_read_package_stream_buf[i]);
  }
// print m_axis_read_package_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_read_package_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_read_package_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_m_axis_read_package_stream_buf[__xlx_apatb_param_m_axis_read_package_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_read_package_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_read_package_stream_buf_final_size, &tcl_file.m_axis_read_package_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_read_package_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_read_package_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_read_package_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_read_package_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_read_package_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size - ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->size();
// print s_axis_rx_metadata_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv_hw;
sc_bv<16> __xlx_tmp_lv;
__xlx_tmp_lv = ((short*)&__xlx_apatb_param_s_axis_rx_metadata_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size, &tcl_file.s_axis_rx_metadata_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size > 0) {
  long s_axis_rx_metadata_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size; j != e; j++) {
    s_axis_rx_metadata_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_metadata_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size - ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_s_axis_rx_data)->size();
// print s_axis_rx_data_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv_hw;
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_s_axis_rx_data_stream_buf[j])[0*16+15];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_open_connection_stream_buf_final_size = ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_open_connection)->size() - __xlx_apatb_param_m_axis_open_connection_stream_buf_size;
{
  while (!((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_open_connection)->empty())
    __xlx_apatb_param_m_axis_open_connection_stream_buf.push_back(((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_open_connection)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_open_connection_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s8__>*)__xlx_apatb_param_m_axis_open_connection)->write(__xlx_apatb_param_m_axis_open_connection_stream_buf[i]);
  }
// print m_axis_open_connection_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_open_connection_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_open_connection_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_lv = ((long long*)&__xlx_apatb_param_m_axis_open_connection_stream_buf[__xlx_apatb_param_m_axis_open_connection_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_open_connection_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_open_connection_stream_buf_final_size, &tcl_file.m_axis_open_connection_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_open_connection_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_open_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_connection_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_open_status_stream_buf_final_size = __xlx_apatb_param_s_axis_open_status_stream_buf_size - ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_open_status)->size();
// print s_axis_open_status_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_open_status_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_open_status_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv_hw;
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_open_status_stream_buf[j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_s_axis_open_status_stream_buf[j])[0*1+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_open_status_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_open_status_stream_buf_final_size, &tcl_file.s_axis_open_status_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_open_status_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_open_status_stream_buf_final_size > 0) {
  long s_axis_open_status_V_stream_ingress_size = __xlx_apatb_param_s_axis_open_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_open_status_stream_buf_final_size; j != e; j++) {
    s_axis_open_status_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_open_status_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_status_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_status_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_open_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_status_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_status_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_close_connection_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->size() - __xlx_apatb_param_m_axis_close_connection_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->empty())
    __xlx_apatb_param_m_axis_close_connection_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_close_connection_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->write(__xlx_apatb_param_m_axis_close_connection_stream_buf[i]);
  }
// print m_axis_close_connection_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_close_connection_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_close_connection_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_m_axis_close_connection_stream_buf[__xlx_apatb_param_m_axis_close_connection_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_close_connection_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_close_connection_stream_buf_final_size, &tcl_file.m_axis_close_connection_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_close_connection_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_close_connection_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_close_connection_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size = ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_tx_metadata)->size() - __xlx_apatb_param_m_axis_tx_metadata_stream_buf_size;
{
  while (!((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_tx_metadata)->empty())
    __xlx_apatb_param_m_axis_tx_metadata_stream_buf.push_back(((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_tx_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_metadata_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_tx_metadata)->write(__xlx_apatb_param_m_axis_tx_metadata_stream_buf[i]);
  }
// print m_axis_tx_metadata_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)&__xlx_apatb_param_m_axis_tx_metadata_stream_buf[__xlx_apatb_param_m_axis_tx_metadata_stream_buf_size+j])[0];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size, &tcl_file.m_axis_tx_metadata_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size = ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tx_data)->size() - __xlx_apatb_param_m_axis_tx_data_stream_buf_size;
{
  while (!((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tx_data)->empty())
    __xlx_apatb_param_m_axis_tx_data_stream_buf.push_back(((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tx_data)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s80__>*)__xlx_apatb_param_m_axis_tx_data)->write(__xlx_apatb_param_m_axis_tx_data_stream_buf[i]);
  }
// print m_axis_tx_data_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size; j != e; ++j) {
sc_bv<1024> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_m_axis_tx_data_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0*16+15];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size = __xlx_apatb_param_s_axis_tx_status_stream_buf_size - ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_s_axis_tx_status)->size();
// print s_axis_tx_status_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv_hw;
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_tx_status_stream_buf[j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_s_axis_tx_status_stream_buf[j])[0*1+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_tx_status_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_tx_status_stream_buf_final_size, &tcl_file.s_axis_tx_status_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_s_axis_tx_status_stream_buf_final_size > 0) {
  long s_axis_tx_status_V_stream_ingress_size = __xlx_apatb_param_s_axis_tx_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size; j != e; j++) {
    s_axis_tx_status_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_tx_status_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_tx_status_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_tx_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_status_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_tx_status_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
