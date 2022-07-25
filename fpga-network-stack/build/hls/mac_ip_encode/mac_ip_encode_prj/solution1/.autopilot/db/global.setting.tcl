
set TopModule "mac_ip_encode_top"
set ClockPeriod 3.2
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
set RtlSubPrefix mac_ip_encode_top_
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
set SourceFiles {sc {} c {/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/mac_ip_encode.cpp /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/../ipv4/ipv4_utils.cpp}}
set SourceFlags {sc {} c {-I/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/mac_ip_encode {}}}
set DirectiveFile /home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/mac_ip_encode/mac_ip_encode_prj/solution1/solution1.directive
set TBFiles {verilog /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/test_mac_ip_encode.cpp bc /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/test_mac_ip_encode.cpp vhdl /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/test_mac_ip_encode.cpp sc /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/test_mac_ip_encode.cpp cas /home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/mac_ip_encode/test_mac_ip_encode.cpp c {}}
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
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
