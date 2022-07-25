
set TopModule "arp_server_subnet_top"
set ClockPeriod 6.4
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 1
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 1
set intNbAccess 1
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix arp_server_subnet_top_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcvu3p:-ffvc1517:-2-i
set SourceFiles {sc {} c {/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/arp_server_subnet.cpp /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/../axi_utils.cpp}}
set SourceFlags {sc {} c {-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/arp_server_subnet {}}}
set DirectiveFile /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/arp_server_subnet/arp_server_subnet_prj/solution1/solution1.directive
set TBFiles {verilog /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/test_arp_server_subnet.cpp bc /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/test_arp_server_subnet.cpp vhdl /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/test_arp_server_subnet.cpp sc /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/test_arp_server_subnet.cpp cas /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/arp_server_subnet/test_arp_server_subnet.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 1
set PlatformFiles {{DefaultPlatform {xilinx/virtex7/virtex7 xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
