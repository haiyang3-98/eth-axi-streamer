#!/usr/bin/env python
"""

Copyright (c) 2021 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

"""

import itertools
import logging
import os
import random

import cocotb_test.simulator
import pytest

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge
 
from cocotbext.axi import AxiStreamBus, AxiStreamFrame, AxiStreamSource, AxiStreamSink

from scapy.all import *
from scapy.layers.l2 import Ether

class TB(object):
    def __init__(self, dut):
        self.dut = dut

        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        cocotb.start_soon(Clock(dut.ap_clk, 10, units="ns").start())

        self.tx_source = AxiStreamSource(AxiStreamBus.from_prefix(dut, "s_axis_net_tx"), dut.ap_clk, dut.ap_rst)
        self.tx_sink = AxiStreamSink(AxiStreamBus.from_prefix(dut, "m_axis_eth_net_tx"), dut.ap_clk, dut.ap_rst)

        self.dut.local_mac = 0x20000000000
        self.dut.remote_mac = 0x20000000001
        self.dut.ethertype = 0xffff 

 
 

    async def reset(self):
        self.dut.ap_rst.setimmediatevalue(0)
        await RisingEdge(self.dut.ap_clk)
        await RisingEdge(self.dut.ap_clk)
        self.dut.ap_rst.value = 1
        await RisingEdge(self.dut.ap_clk)
        await RisingEdge(self.dut.ap_clk)
        self.dut.ap_rst.value = 0
        await RisingEdge(self.dut.ap_clk)
        await RisingEdge(self.dut.ap_clk)

def cycle_pause():
    return itertools.cycle([1, 1, 1, 0])


def size_list():
    data_width = max(len(cocotb.top.s_axis_tdata), len(cocotb.top.m_axis_tdata))
    byte_width = data_width // 8
    return list(range(1, byte_width*4+1))+[512]+[1]*64


def incrementing_payload(length):
    return bytearray(itertools.islice(itertools.cycle(range(256)), length))


@cocotb.test()
async def run_test(dut):

    payload_lengths=[32,256]
    payload_data=incrementing_payload
    eth = Ether(src='02:00:00:00:00:00', dst='02:00:00:00:00:01', type = 0xFFFF)

    tb = TB(dut)

    await tb.reset()
 
    test_frames = []

    for test_data in [payload_data(x) for x in payload_lengths]:
        test_frame = AxiStreamFrame(test_data)
 
        test_frames.append(test_frame)
        await tb.tx_source.send(test_frame)
 
    for test_frame in test_frames:
        test_pkt = eth / test_frame.tdata
        tx_frame = await tb.tx_sink.recv()
        assert bytes(test_pkt) == bytes(tx_frame.tdata)
        #assert rx_frame.tdata == test_frame.tdata

    assert tb.tx_sink.empty()

    await RisingEdge(dut.ap_clk)
    await RisingEdge(dut.ap_clk)

