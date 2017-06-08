set C_TypeInfoList {{ 
"aescbc" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"mode": [[],"0"] }, {"data_in": [[], {"array": ["1", [32]]}] }, {"data_out": [[], {"array": ["1", [16]]}] }],[],""], 
"1": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}], 
"0": [ "ciphermode_t", {"typedef": [[[], {"scalar": "2"}],""]}], 
"2": [ "", {"enum": [[],[],[{"RESET":  {"scalar": "__integer__"}},{"ENCRYPT":  {"scalar": "__integer__"}},{"DECRYPT":  {"scalar": "__integer__"}},{"SET_IV":  {"scalar": "__integer__"}},{"SET_KEY":  {"scalar": "__integer__"}}],""]}]
}}
set moduleName aescbc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {aescbc}
set C_modelType { void 0 }
set C_modelArgList {
	{ mode uint 3 regular {axi_slave 0}  }
	{ data_in int 8 regular {axi_slave 0}  }
	{ data_out int 8 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mode", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "mode","cData": "enum ","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "data_in", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_in","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}], "offset" : {"in":32}, "offset_end" : {"in":63}} , 
 	{ "Name" : "data_out", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_memory","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "data_out","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"out":64}, "offset_end" : {"out":79}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"aescbc","role":"start","value":"0","valid_bit":"0"},{"name":"aescbc","role":"continue","value":"0","valid_bit":"4"},{"name":"aescbc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"mode","role":"data","value":"16"},{"name":"data_in","role":"data","value":"32"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"aescbc","role":"start","value":"0","valid_bit":"0"},{"name":"aescbc","role":"done","value":"0","valid_bit":"1"},{"name":"aescbc","role":"idle","value":"0","valid_bit":"2"},{"name":"aescbc","role":"ready","value":"0","valid_bit":"3"},{"name":"aescbc","role":"auto_start","value":"0","valid_bit":"7"},{"name":"data_out","role":"data","value":"64"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "15", "21"],
		"CDFG" : "aescbc",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "mode", "Type" : "None", "Direction" : "I"},
		{"Name" : "data_in", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "data_out", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "iv", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "xorv", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "key", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "ctx_deckey", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "15", "SubInstance" : "grp_aes_decrypt_ecb_fu_613", "Port" : "ctx_deckey"},
			{"ID" : "21", "SubInstance" : "grp_aes_expandEncKey_fu_626", "Port" : "k"}]},
		{"Name" : "ctx_enckey", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "10", "SubInstance" : "grp_aes_encrypt_ecb_fu_602", "Port" : "ctx_enckey"}]},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "15", "SubInstance" : "grp_aes_decrypt_ecb_fu_613", "Port" : "sbox"},
			{"ID" : "21", "SubInstance" : "grp_aes_expandEncKey_fu_626", "Port" : "sbox"},
			{"ID" : "10", "SubInstance" : "grp_aes_encrypt_ecb_fu_602", "Port" : "sbox"}]},
		{"Name" : "ctx_key", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "15", "SubInstance" : "grp_aes_decrypt_ecb_fu_613", "Port" : "ctx_key"},
			{"ID" : "10", "SubInstance" : "grp_aes_encrypt_ecb_fu_602", "Port" : "ctx_key"}]},
		{"Name" : "lastbuf", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "sboxinv", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "15", "SubInstance" : "grp_aes_decrypt_ecb_fu_613", "Port" : "sboxinv"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_encrypt_ecb_fu_602"},
		{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_decrypt_ecb_fu_613"},
		{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_626"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xorv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.key_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_deckey_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_enckey_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_key_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lastbuf_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aescbc_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_ecb_fu_602", "Parent" : "0", "Child" : ["11", "12", "14"],
		"CDFG" : "aes_encrypt_ecb",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "14", "SubInstance" : "grp_aes_addRoundKey_fu_377", "Port" : "buf_r"}]},
		{"Name" : "ctx_enckey", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "ctx_key", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "12", "SubInstance" : "grp_aes_expandEncKey_fu_368", "Port" : "k"},
			{"ID" : "14", "SubInstance" : "grp_aes_addRoundKey_fu_377", "Port" : "key"}]},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "12", "SubInstance" : "grp_aes_expandEncKey_fu_368", "Port" : "sbox"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_368"},
		{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_368"},
		{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_377"},
		{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_377"},
		{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_377"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_ecb_fu_602.sbox_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_ecb_fu_602.grp_aes_expandEncKey_fu_368", "Parent" : "10", "Child" : ["13"],
		"CDFG" : "aes_expandEncKey",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "k", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "rc_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_ecb_fu_602.grp_aes_expandEncKey_fu_368.sbox_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_encrypt_ecb_fu_602.grp_aes_addRoundKey_fu_377", "Parent" : "10",
		"CDFG" : "aes_addRoundKey",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "key_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_decrypt_ecb_fu_613", "Parent" : "0", "Child" : ["16", "17", "19", "20"],
		"CDFG" : "aes_decrypt_ecb",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "19", "SubInstance" : "grp_aes_mixColumns_inv_fu_334", "Port" : "buf_r"},
			{"ID" : "20", "SubInstance" : "grp_aes_addRoundKey_fu_340", "Port" : "buf_r"}]},
		{"Name" : "ctx_deckey", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "ctx_key", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "17", "SubInstance" : "grp_aes_expandDecKey_fu_325", "Port" : "ctx_key"},
			{"ID" : "20", "SubInstance" : "grp_aes_addRoundKey_fu_340", "Port" : "key"}]},
		{"Name" : "sboxinv", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "17", "SubInstance" : "grp_aes_expandDecKey_fu_325", "Port" : "sbox"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandDecKey_fu_325"},
		{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_mixColumns_inv_fu_334"},
		{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"},
		{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"},
		{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_decrypt_ecb_fu_613.sboxinv_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_decrypt_ecb_fu_613.grp_aes_expandDecKey_fu_325", "Parent" : "15", "Child" : ["18"],
		"CDFG" : "aes_expandDecKey",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "rc_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "ctx_key", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes_decrypt_ecb_fu_613.grp_aes_expandDecKey_fu_325.sbox_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_decrypt_ecb_fu_613.grp_aes_mixColumns_inv_fu_334", "Parent" : "15",
		"CDFG" : "aes_mixColumns_inv",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_decrypt_ecb_fu_613.grp_aes_addRoundKey_fu_340", "Parent" : "15",
		"CDFG" : "aes_addRoundKey",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "key", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "key_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_626", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "aes_expandEncKey",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "k", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "rc_read", "Type" : "None", "Direction" : "I"},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_626.sbox_U", "Parent" : "21"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2543"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2544"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
