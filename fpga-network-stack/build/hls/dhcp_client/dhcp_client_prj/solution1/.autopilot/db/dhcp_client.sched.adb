<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>dhcp_client</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>17</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>m_axis_open_port_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>m_axis_open_port</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1701999731</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>s_axis_open_port_status_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>s_axis_open_port_status</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1953705321</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>s_axis_rx_metadata_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>s_axis_rx_metadata</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1701667173</coreId>
					</Obj>
					<bitwidth>128</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>s_axis_rx_data_V_data_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>s_axis_rx_data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>2373573872</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_5">
				<Value>
					<Obj>
						<type>1</type>
						<id>5</id>
						<name>s_axis_rx_data_V_keep_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>s_axis_rx_data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1932355960</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_6">
				<Value>
					<Obj>
						<type>1</type>
						<id>6</id>
						<name>s_axis_rx_data_V_strb_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>s_axis_rx_data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1835099506</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_7">
				<Value>
					<Obj>
						<type>1</type>
						<id>7</id>
						<name>s_axis_rx_data_V_last_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>s_axis_rx_data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1747938147</coreId>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_8">
				<Value>
					<Obj>
						<type>1</type>
						<id>8</id>
						<name>m_axis_tx_metadata_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>m_axis_tx_metadata</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1835099506</coreId>
					</Obj>
					<bitwidth>128</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_9">
				<Value>
					<Obj>
						<type>1</type>
						<id>9</id>
						<name>m_axis_tx_length_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>m_axis_tx_length</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1031040613</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_10">
				<Value>
					<Obj>
						<type>1</type>
						<id>10</id>
						<name>m_axis_tx_data_V_data_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>m_axis_tx_data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1697592167</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_11">
				<Value>
					<Obj>
						<type>1</type>
						<id>11</id>
						<name>m_axis_tx_data_V_keep_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>m_axis_tx_data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>2019634536</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_12">
				<Value>
					<Obj>
						<type>1</type>
						<id>12</id>
						<name>m_axis_tx_data_V_strb_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>m_axis_tx_data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>2373904608</coreId>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_13">
				<Value>
					<Obj>
						<type>1</type>
						<id>13</id>
						<name>m_axis_tx_data_V_last_V</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>m_axis_tx_data</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1953705321</coreId>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_14">
				<Value>
					<Obj>
						<type>1</type>
						<id>14</id>
						<name>dhcpEnable</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>dhcpEnable</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1441</coreId>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_15">
				<Value>
					<Obj>
						<type>1</type>
						<id>15</id>
						<name>inputIpAddress</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>inputIpAddress</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>151666223</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_16">
				<Value>
					<Obj>
						<type>1</type>
						<id>16</id>
						<name>dhcpIpAddressOut</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>dhcpIpAddressOut</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>892547872</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_17">
				<Value>
					<Obj>
						<type>1</type>
						<id>17</id>
						<name>myMacAddress</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>myMacAddress</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>997418094</coreId>
					</Obj>
					<bitwidth>48</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>14</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_18">
				<Value>
					<Obj>
						<type>0</type>
						<id>52</id>
						<name>myMacAddress_c3</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>345</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>345</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1919905125</coreId>
					</Obj>
					<bitwidth>48</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>119</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_19">
				<Value>
					<Obj>
						<type>0</type>
						<id>53</id>
						<name>inputIpAddress_c2</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>343</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>343</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>825046064</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>120</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_20">
				<Value>
					<Obj>
						<type>0</type>
						<id>54</id>
						<name>dhcpEnable_c1</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>342</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>342</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>828326990</coreId>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>121</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_21">
				<Value>
					<Obj>
						<type>0</type>
						<id>55</id>
						<name>myMacAddress_c12</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>345</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>345</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>828321841</coreId>
					</Obj>
					<bitwidth>48</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>122</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_22">
				<Value>
					<Obj>
						<type>0</type>
						<id>56</id>
						<name>myMacAddress_c</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>345</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>345</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1766203965</coreId>
					</Obj>
					<bitwidth>48</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>123</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_23">
				<Value>
					<Obj>
						<type>0</type>
						<id>57</id>
						<name>inputIpAddress_c</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>343</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>343</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1313415741</coreId>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>124</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_24">
				<Value>
					<Obj>
						<type>0</type>
						<id>58</id>
						<name>dhcpEnable_c</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>342</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>342</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1702065440</coreId>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>125</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_25">
				<Value>
					<Obj>
						<type>0</type>
						<id>110</id>
						<name>_ln345</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>345</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>345</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1936683105</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>127</item>
					<item>128</item>
					<item>129</item>
					<item>130</item>
					<item>131</item>
					<item>132</item>
					<item>133</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.16</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_26">
				<Value>
					<Obj>
						<type>0</type>
						<id>111</id>
						<name>_ln342</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>342</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>342</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1702035557</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>10</count>
					<item_version>0</item_version>
					<item>135</item>
					<item>136</item>
					<item>137</item>
					<item>138</item>
					<item>139</item>
					<item>140</item>
					<item>141</item>
					<item>142</item>
					<item>756</item>
					<item>757</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_27">
				<Value>
					<Obj>
						<type>0</type>
						<id>112</id>
						<name>_ln371</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>371</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>371</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1667785788</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>144</item>
					<item>145</item>
					<item>146</item>
					<item>169</item>
					<item>170</item>
					<item>171</item>
					<item>172</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>10</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_28">
				<Value>
					<Obj>
						<type>0</type>
						<id>113</id>
						<name>_ln373</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>373</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>373</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1701998624</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>18</count>
					<item_version>0</item_version>
					<item>148</item>
					<item>149</item>
					<item>150</item>
					<item>151</item>
					<item>152</item>
					<item>153</item>
					<item>154</item>
					<item>173</item>
					<item>174</item>
					<item>175</item>
					<item>176</item>
					<item>177</item>
					<item>178</item>
					<item>179</item>
					<item>180</item>
					<item>181</item>
					<item>755</item>
					<item>758</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>11</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_29">
				<Value>
					<Obj>
						<type>0</type>
						<id>114</id>
						<name>_ln375</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>375</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>375</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1043414132</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>16</count>
					<item_version>0</item_version>
					<item>156</item>
					<item>157</item>
					<item>158</item>
					<item>159</item>
					<item>182</item>
					<item>183</item>
					<item>184</item>
					<item>185</item>
					<item>186</item>
					<item>187</item>
					<item>188</item>
					<item>189</item>
					<item>190</item>
					<item>753</item>
					<item>754</item>
					<item>759</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>12</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_30">
				<Value>
					<Obj>
						<type>0</type>
						<id>115</id>
						<name>_ln377</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>377</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>377</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1835099506</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>14</count>
					<item_version>0</item_version>
					<item>161</item>
					<item>162</item>
					<item>163</item>
					<item>164</item>
					<item>165</item>
					<item>166</item>
					<item>167</item>
					<item>168</item>
					<item>191</item>
					<item>192</item>
					<item>193</item>
					<item>194</item>
					<item>752</item>
					<item>760</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>13</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_31">
				<Value>
					<Obj>
						<type>0</type>
						<id>116</id>
						<name>_ln381</name>
						<fileName>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</fileName>
						<fileDirectory>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</fileDirectory>
						<lineNumber>381</lineNumber>
						<contextFuncName>dhcp_client</contextFuncName>
						<contextNormFuncName>dhcp_client</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/build/hls/dhcp_client</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/haiyang3/eth-axi-streamer/fpga-network-stack/hls/dhcp_client/dhcp_client.cpp</first>
											<second>dhcp_client</second>
										</first>
										<second>381</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1852142702</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>14</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>7</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_32">
				<Value>
					<Obj>
						<type>2</type>
						<id>118</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>825897782</coreId>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_33">
				<Value>
					<Obj>
						<type>2</type>
						<id>126</id>
						<name>dhcp_client_entry3</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>5195342</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:dhcp_client.entry3&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_34">
				<Value>
					<Obj>
						<type>2</type>
						<id>134</id>
						<name>dhcp_client_entry7</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1043341356</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:dhcp_client.entry7&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_35">
				<Value>
					<Obj>
						<type>2</type>
						<id>143</id>
						<name>open_dhcp_port</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1047295280</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:open_dhcp_port&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_36">
				<Value>
					<Obj>
						<type>2</type>
						<id>147</id>
						<name>receive_message</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1600747617</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:receive_message&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_37">
				<Value>
					<Obj>
						<type>2</type>
						<id>155</id>
						<name>dhcp_fsm</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1701999731</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:dhcp_fsm&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_38">
				<Value>
					<Obj>
						<type>2</type>
						<id>160</id>
						<name>send_message</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>1734439968</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:send_message&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_39">
				<Obj>
					<type>3</type>
					<id>117</id>
					<name>dhcp_client</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<coreId>1734439795</coreId>
				</Obj>
				<node_objs>
					<count>14</count>
					<item_version>0</item_version>
					<item>52</item>
					<item>53</item>
					<item>54</item>
					<item>55</item>
					<item>56</item>
					<item>57</item>
					<item>58</item>
					<item>110</item>
					<item>111</item>
					<item>112</item>
					<item>113</item>
					<item>114</item>
					<item>115</item>
					<item>116</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>79</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_40">
				<id>119</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>52</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>120</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>53</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>121</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>54</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_43">
				<id>122</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>55</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_44">
				<id>123</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>56</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_45">
				<id>124</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>57</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_46">
				<id>125</id>
				<edge_type>1</edge_type>
				<source_obj>118</source_obj>
				<sink_obj>58</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_47">
				<id>127</id>
				<edge_type>1</edge_type>
				<source_obj>126</source_obj>
				<sink_obj>110</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_48">
				<id>128</id>
				<edge_type>1</edge_type>
				<source_obj>14</source_obj>
				<sink_obj>110</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_49">
				<id>129</id>
				<edge_type>1</edge_type>
				<source_obj>15</source_obj>
				<sink_obj>110</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_50">
				<id>130</id>
				<edge_type>1</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>110</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_51">
				<id>131</id>
				<edge_type>1</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>110</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_52">
				<id>132</id>
				<edge_type>1</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>110</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_53">
				<id>133</id>
				<edge_type>1</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>110</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_54">
				<id>135</id>
				<edge_type>1</edge_type>
				<source_obj>134</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_55">
				<id>136</id>
				<edge_type>1</edge_type>
				<source_obj>54</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_56">
				<id>137</id>
				<edge_type>1</edge_type>
				<source_obj>53</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_57">
				<id>138</id>
				<edge_type>1</edge_type>
				<source_obj>52</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_58">
				<id>139</id>
				<edge_type>1</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_59">
				<id>140</id>
				<edge_type>1</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_60">
				<id>141</id>
				<edge_type>1</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_61">
				<id>142</id>
				<edge_type>1</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_62">
				<id>144</id>
				<edge_type>1</edge_type>
				<source_obj>143</source_obj>
				<sink_obj>112</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_63">
				<id>145</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>112</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_64">
				<id>146</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>112</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_65">
				<id>148</id>
				<edge_type>1</edge_type>
				<source_obj>147</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_66">
				<id>149</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_67">
				<id>150</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_68">
				<id>151</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_69">
				<id>152</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_70">
				<id>153</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_71">
				<id>154</id>
				<edge_type>1</edge_type>
				<source_obj>56</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_72">
				<id>156</id>
				<edge_type>1</edge_type>
				<source_obj>155</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_73">
				<id>157</id>
				<edge_type>1</edge_type>
				<source_obj>16</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_74">
				<id>158</id>
				<edge_type>1</edge_type>
				<source_obj>58</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_75">
				<id>159</id>
				<edge_type>1</edge_type>
				<source_obj>57</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_76">
				<id>161</id>
				<edge_type>1</edge_type>
				<source_obj>160</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_77">
				<id>162</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_78">
				<id>163</id>
				<edge_type>1</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_79">
				<id>164</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_80">
				<id>165</id>
				<edge_type>1</edge_type>
				<source_obj>11</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_81">
				<id>166</id>
				<edge_type>1</edge_type>
				<source_obj>12</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_82">
				<id>167</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_83">
				<id>168</id>
				<edge_type>1</edge_type>
				<source_obj>55</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_84">
				<id>169</id>
				<edge_type>1</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>112</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_85">
				<id>170</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>112</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_86">
				<id>171</id>
				<edge_type>1</edge_type>
				<source_obj>22</source_obj>
				<sink_obj>112</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_87">
				<id>172</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>112</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_88">
				<id>173</id>
				<edge_type>1</edge_type>
				<source_obj>25</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_89">
				<id>174</id>
				<edge_type>1</edge_type>
				<source_obj>26</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_90">
				<id>175</id>
				<edge_type>1</edge_type>
				<source_obj>28</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_91">
				<id>176</id>
				<edge_type>1</edge_type>
				<source_obj>29</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_92">
				<id>177</id>
				<edge_type>1</edge_type>
				<source_obj>31</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_93">
				<id>178</id>
				<edge_type>1</edge_type>
				<source_obj>32</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_94">
				<id>179</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_95">
				<id>180</id>
				<edge_type>1</edge_type>
				<source_obj>35</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_96">
				<id>181</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_97">
				<id>182</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_98">
				<id>183</id>
				<edge_type>1</edge_type>
				<source_obj>40</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_99">
				<id>184</id>
				<edge_type>1</edge_type>
				<source_obj>42</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_100">
				<id>185</id>
				<edge_type>1</edge_type>
				<source_obj>44</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_101">
				<id>186</id>
				<edge_type>1</edge_type>
				<source_obj>45</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_102">
				<id>187</id>
				<edge_type>1</edge_type>
				<source_obj>46</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_103">
				<id>188</id>
				<edge_type>1</edge_type>
				<source_obj>23</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_104">
				<id>189</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_105">
				<id>190</id>
				<edge_type>1</edge_type>
				<source_obj>37</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_106">
				<id>191</id>
				<edge_type>1</edge_type>
				<source_obj>49</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_107">
				<id>192</id>
				<edge_type>1</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_108">
				<id>193</id>
				<edge_type>1</edge_type>
				<source_obj>51</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_109">
				<id>194</id>
				<edge_type>1</edge_type>
				<source_obj>48</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_110">
				<id>752</id>
				<edge_type>4</edge_type>
				<source_obj>114</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_111">
				<id>753</id>
				<edge_type>4</edge_type>
				<source_obj>113</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_112">
				<id>754</id>
				<edge_type>4</edge_type>
				<source_obj>112</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_113">
				<id>755</id>
				<edge_type>4</edge_type>
				<source_obj>111</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_114">
				<id>756</id>
				<edge_type>4</edge_type>
				<source_obj>110</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_115">
				<id>757</id>
				<edge_type>4</edge_type>
				<source_obj>110</source_obj>
				<sink_obj>111</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_116">
				<id>758</id>
				<edge_type>4</edge_type>
				<source_obj>111</source_obj>
				<sink_obj>113</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_117">
				<id>759</id>
				<edge_type>4</edge_type>
				<source_obj>113</source_obj>
				<sink_obj>114</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_118">
				<id>760</id>
				<edge_type>4</edge_type>
				<source_obj>114</source_obj>
				<sink_obj>115</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_119">
			<mId>1</mId>
			<mTag>dhcp_client</mTag>
			<mNormTag>dhcp_client</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>117</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>9</mMinLatency>
			<mMaxLatency>9</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_120">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>17</count>
					<item_version>0</item_version>
					<item class_id="25" tracking_level="1" version="0" object_id="_121">
						<name>m_axis_open_port_V</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_122">
						<name>s_axis_open_port_status_V</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_123">
						<name>s_axis_rx_metadata_V</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_124">
						<name>s_axis_rx_data_V_data_V</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_125">
						<name>s_axis_rx_data_V_keep_V</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_126">
						<name>s_axis_rx_data_V_strb_V</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_127">
						<name>s_axis_rx_data_V_last_V</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_128">
						<name>m_axis_tx_metadata_V</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_129">
						<name>m_axis_tx_length_V</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_130">
						<name>m_axis_tx_data_V_data_V</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_131">
						<name>m_axis_tx_data_V_keep_V</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_132">
						<name>m_axis_tx_data_V_strb_V</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_133">
						<name>m_axis_tx_data_V_last_V</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_134">
						<name>dhcpEnable</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_135">
						<name>inputIpAddress</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_136">
						<name>dhcpIpAddressOut</name>
						<dir>1</dir>
						<type>3</type>
						<need_hs>0</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
					<item class_id_reference="25" object_id="_137">
						<name>myMacAddress</name>
						<dir>0</dir>
						<type>3</type>
						<need_hs>1</need_hs>
						<top_port class_id="-1"></top_port>
						<chan class_id="-1"></chan>
					</item>
				</port_list>
				<process_list class_id="27" tracking_level="0" version="0">
					<count>6</count>
					<item_version>0</item_version>
					<item class_id="28" tracking_level="1" version="0" object_id="_138">
						<type>0</type>
						<name>dhcp_client_entry3_U0</name>
						<ssdmobj_id>110</ssdmobj_id>
						<pins class_id="29" tracking_level="0" version="0">
							<count>3</count>
							<item_version>0</item_version>
							<item class_id="30" tracking_level="1" version="0" object_id="_139">
								<port class_id_reference="25" object_id="_140">
									<name>dhcpEnable</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_134"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id="31" tracking_level="1" version="0" object_id="_141">
									<type>0</type>
									<name>dhcp_client_entry3_U0</name>
									<ssdmobj_id>110</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_142">
								<port class_id_reference="25" object_id="_143">
									<name>inputIpAddress</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_135"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_141"></inst>
							</item>
							<item class_id_reference="30" object_id="_144">
								<port class_id_reference="25" object_id="_145">
									<name>myMacAddress</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_137"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_141"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_146">
						<type>0</type>
						<name>dhcp_client_entry7_U0</name>
						<ssdmobj_id>111</ssdmobj_id>
						<pins>
							<count>0</count>
							<item_version>0</item_version>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_147">
						<type>0</type>
						<name>open_dhcp_port_U0</name>
						<ssdmobj_id>112</ssdmobj_id>
						<pins>
							<count>2</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_148">
								<port class_id_reference="25" object_id="_149">
									<name>m_axis_open_port_V</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_121"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_150">
									<type>0</type>
									<name>open_dhcp_port_U0</name>
									<ssdmobj_id>112</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_151">
								<port class_id_reference="25" object_id="_152">
									<name>s_axis_open_port_status_V</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_122"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_150"></inst>
							</item>
						</pins>
						<in_source_fork>1</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>1</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_153">
						<type>0</type>
						<name>receive_message_U0</name>
						<ssdmobj_id>113</ssdmobj_id>
						<pins>
							<count>5</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_154">
								<port class_id_reference="25" object_id="_155">
									<name>s_axis_rx_metadata_V</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_123"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_156">
									<type>0</type>
									<name>receive_message_U0</name>
									<ssdmobj_id>113</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_157">
								<port class_id_reference="25" object_id="_158">
									<name>s_axis_rx_data_V_data_V</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_124"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="30" object_id="_159">
								<port class_id_reference="25" object_id="_160">
									<name>s_axis_rx_data_V_keep_V</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_125"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="30" object_id="_161">
								<port class_id_reference="25" object_id="_162">
									<name>s_axis_rx_data_V_strb_V</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_126"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_156"></inst>
							</item>
							<item class_id_reference="30" object_id="_163">
								<port class_id_reference="25" object_id="_164">
									<name>s_axis_rx_data_V_last_V</name>
									<dir>0</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_127"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_156"></inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>0</in_sink_join>
						<flag_in_gui>1</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_165">
						<type>0</type>
						<name>dhcp_fsm_U0</name>
						<ssdmobj_id>114</ssdmobj_id>
						<pins>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_166">
								<port class_id_reference="25" object_id="_167">
									<name>dhcpIpAddressOut</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>1</need_hs>
									<top_port class_id_reference="25" object_id_reference="_136"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_168">
									<type>0</type>
									<name>dhcp_fsm_U0</name>
									<ssdmobj_id>114</ssdmobj_id>
								</inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>1</flag_in_gui>
					</item>
					<item class_id_reference="28" object_id="_169">
						<type>0</type>
						<name>send_message_U0</name>
						<ssdmobj_id>115</ssdmobj_id>
						<pins>
							<count>6</count>
							<item_version>0</item_version>
							<item class_id_reference="30" object_id="_170">
								<port class_id_reference="25" object_id="_171">
									<name>m_axis_tx_metadata_V</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_128"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id="_172">
									<type>0</type>
									<name>send_message_U0</name>
									<ssdmobj_id>115</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="30" object_id="_173">
								<port class_id_reference="25" object_id="_174">
									<name>m_axis_tx_length_V</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_129"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_172"></inst>
							</item>
							<item class_id_reference="30" object_id="_175">
								<port class_id_reference="25" object_id="_176">
									<name>m_axis_tx_data_V_data_V</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_130"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_172"></inst>
							</item>
							<item class_id_reference="30" object_id="_177">
								<port class_id_reference="25" object_id="_178">
									<name>m_axis_tx_data_V_keep_V</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_131"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_172"></inst>
							</item>
							<item class_id_reference="30" object_id="_179">
								<port class_id_reference="25" object_id="_180">
									<name>m_axis_tx_data_V_strb_V</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_132"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_172"></inst>
							</item>
							<item class_id_reference="30" object_id="_181">
								<port class_id_reference="25" object_id="_182">
									<name>m_axis_tx_data_V_last_V</name>
									<dir>1</dir>
									<type>3</type>
									<need_hs>0</need_hs>
									<top_port class_id_reference="25" object_id_reference="_133"></top_port>
									<chan class_id="-1"></chan>
								</port>
								<inst class_id_reference="31" object_id_reference="_172"></inst>
							</item>
						</pins>
						<in_source_fork>0</in_source_fork>
						<in_sink_join>1</in_sink_join>
						<flag_in_gui>0</flag_in_gui>
					</item>
				</process_list>
				<channel_list class_id="32" tracking_level="0" version="0">
					<count>10</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_183">
						<type>1</type>
						<name>dhcpEnable_c1</name>
						<ssdmobj_id>54</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>1</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_184">
							<port class_id_reference="25" object_id="_185">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_141"></inst>
						</source>
						<sink class_id_reference="30" object_id="_186">
							<port class_id_reference="25" object_id="_187">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id="_188">
								<type>0</type>
								<name>dhcp_client_entry7_U0</name>
								<ssdmobj_id>111</ssdmobj_id>
							</inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_189">
						<type>1</type>
						<name>inputIpAddress_c2</name>
						<ssdmobj_id>53</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_190">
							<port class_id_reference="25" object_id="_191">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_141"></inst>
						</source>
						<sink class_id_reference="30" object_id="_192">
							<port class_id_reference="25" object_id="_193">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_188"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_194">
						<type>1</type>
						<name>myMacAddress_c3</name>
						<ssdmobj_id>52</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>48</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_195">
							<port class_id_reference="25" object_id="_196">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_141"></inst>
						</source>
						<sink class_id_reference="30" object_id="_197">
							<port class_id_reference="25" object_id="_198">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_188"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_199">
						<type>1</type>
						<name>dhcpEnable_c</name>
						<ssdmobj_id>58</ssdmobj_id>
						<ctype>0</ctype>
						<depth>3</depth>
						<bitwidth>1</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>3</suggested_depth>
						<source class_id_reference="30" object_id="_200">
							<port class_id_reference="25" object_id="_201">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_188"></inst>
						</source>
						<sink class_id_reference="30" object_id="_202">
							<port class_id_reference="25" object_id="_203">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_168"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_204">
						<type>1</type>
						<name>inputIpAddress_c</name>
						<ssdmobj_id>57</ssdmobj_id>
						<ctype>0</ctype>
						<depth>3</depth>
						<bitwidth>32</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>3</suggested_depth>
						<source class_id_reference="30" object_id="_205">
							<port class_id_reference="25" object_id="_206">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_188"></inst>
						</source>
						<sink class_id_reference="30" object_id="_207">
							<port class_id_reference="25" object_id="_208">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_168"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_209">
						<type>1</type>
						<name>myMacAddress_c</name>
						<ssdmobj_id>56</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>48</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>2</suggested_depth>
						<source class_id_reference="30" object_id="_210">
							<port class_id_reference="25" object_id="_211">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_188"></inst>
						</source>
						<sink class_id_reference="30" object_id="_212">
							<port class_id_reference="25" object_id="_213">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_156"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_214">
						<type>1</type>
						<name>myMacAddress_c12</name>
						<ssdmobj_id>55</ssdmobj_id>
						<ctype>0</ctype>
						<depth>4</depth>
						<bitwidth>48</bitwidth>
						<suggested_type>2</suggested_type>
						<suggested_depth>4</suggested_depth>
						<source class_id_reference="30" object_id="_215">
							<port class_id_reference="25" object_id="_216">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_188"></inst>
						</source>
						<sink class_id_reference="30" object_id="_217">
							<port class_id_reference="25" object_id="_218">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_172"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_219">
						<type>1</type>
						<name>portOpen</name>
						<ssdmobj_id>23</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>1</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>4</suggested_depth>
						<source class_id_reference="30" object_id="_220">
							<port class_id_reference="25" object_id="_221">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_150"></inst>
						</source>
						<sink class_id_reference="30" object_id="_222">
							<port class_id_reference="25" object_id="_223">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_168"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_224">
						<type>1</type>
						<name>dhcp_replyMetaFifo</name>
						<ssdmobj_id>37</ssdmobj_id>
						<ctype>0</ctype>
						<depth>4</depth>
						<bitwidth>128</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>4</suggested_depth>
						<source class_id_reference="30" object_id="_225">
							<port class_id_reference="25" object_id="_226">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_156"></inst>
						</source>
						<sink class_id_reference="30" object_id="_227">
							<port class_id_reference="25" object_id="_228">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_168"></inst>
						</sink>
					</item>
					<item class_id_reference="26" object_id="_229">
						<type>1</type>
						<name>dhcp_requestMetaFifo</name>
						<ssdmobj_id>48</ssdmobj_id>
						<ctype>0</ctype>
						<depth>4</depth>
						<bitwidth>96</bitwidth>
						<suggested_type>0</suggested_type>
						<suggested_depth>4</suggested_depth>
						<source class_id_reference="30" object_id="_230">
							<port class_id_reference="25" object_id="_231">
								<name>in</name>
								<dir>0</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_168"></inst>
						</source>
						<sink class_id_reference="30" object_id="_232">
							<port class_id_reference="25" object_id="_233">
								<name>out</name>
								<dir>1</dir>
								<type>3</type>
								<need_hs>0</need_hs>
								<top_port class_id="-1"></top_port>
								<chan class_id="-1"></chan>
							</port>
							<inst class_id_reference="31" object_id_reference="_172"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>14</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>52</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>53</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>54</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>55</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>56</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>57</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>58</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>110</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>111</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>112</first>
			<second>
				<first>3</first>
				<second>2</second>
			</second>
		</item>
		<item>
			<first>113</first>
			<second>
				<first>3</first>
				<second>2</second>
			</second>
		</item>
		<item>
			<first>114</first>
			<second>
				<first>6</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>115</first>
			<second>
				<first>8</first>
				<second>2</second>
			</second>
		</item>
		<item>
			<first>116</first>
			<second>
				<first>11</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>117</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>11</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_234">
			<region_name>dhcp_client</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>117</item>
			</basic_blocks>
			<nodes>
				<count>65</count>
				<item_version>0</item_version>
				<item>52</item>
				<item>53</item>
				<item>54</item>
				<item>55</item>
				<item>56</item>
				<item>57</item>
				<item>58</item>
				<item>59</item>
				<item>60</item>
				<item>61</item>
				<item>62</item>
				<item>63</item>
				<item>64</item>
				<item>65</item>
				<item>66</item>
				<item>67</item>
				<item>68</item>
				<item>69</item>
				<item>70</item>
				<item>71</item>
				<item>72</item>
				<item>73</item>
				<item>74</item>
				<item>75</item>
				<item>76</item>
				<item>77</item>
				<item>78</item>
				<item>79</item>
				<item>80</item>
				<item>81</item>
				<item>82</item>
				<item>83</item>
				<item>84</item>
				<item>85</item>
				<item>86</item>
				<item>87</item>
				<item>88</item>
				<item>89</item>
				<item>90</item>
				<item>91</item>
				<item>92</item>
				<item>93</item>
				<item>94</item>
				<item>95</item>
				<item>96</item>
				<item>97</item>
				<item>98</item>
				<item>99</item>
				<item>100</item>
				<item>101</item>
				<item>102</item>
				<item>103</item>
				<item>104</item>
				<item>105</item>
				<item>106</item>
				<item>107</item>
				<item>108</item>
				<item>109</item>
				<item>110</item>
				<item>111</item>
				<item>112</item>
				<item>113</item>
				<item>114</item>
				<item>115</item>
				<item>116</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

