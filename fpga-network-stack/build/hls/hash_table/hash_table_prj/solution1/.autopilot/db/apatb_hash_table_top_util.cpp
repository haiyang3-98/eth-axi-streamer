#include <iostream>
#include "hls_stream.h"

using namespace std;

struct __cosim_T_2__ {char data[2];};
extern "C" void fpga_fifo_push_2(__cosim_T_2__* val, hls::stream<__cosim_T_2__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_2(__cosim_T_2__* val, hls::stream<__cosim_T_2__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_2(hls::stream<__cosim_T_2__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_2(hls::stream<__cosim_T_2__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_8__ {char data[8];};
extern "C" void fpga_fifo_push_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_8(hls::stream<__cosim_T_8__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_8(hls::stream<__cosim_T_8__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_16__ {char data[16];};
extern "C" void fpga_fifo_push_16(__cosim_T_16__* val, hls::stream<__cosim_T_16__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_16(__cosim_T_16__* val, hls::stream<__cosim_T_16__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_16(hls::stream<__cosim_T_16__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_16(hls::stream<__cosim_T_16__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_24__ {char data[24];};
extern "C" void fpga_fifo_push_24(__cosim_T_24__* val, hls::stream<__cosim_T_24__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_24(__cosim_T_24__* val, hls::stream<__cosim_T_24__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_24(hls::stream<__cosim_T_24__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_24(hls::stream<__cosim_T_24__>* fifo) {
  return fifo->exist();
}