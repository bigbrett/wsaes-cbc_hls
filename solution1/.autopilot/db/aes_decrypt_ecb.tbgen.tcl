set moduleName aes_decrypt_ecb
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {aes_decrypt_ecb}
set C_modelType { void 0 }
set C_modelArgList {
	{ buf_r int 8 regular {array 16 { 2 2 } 1 1 }  }
	{ ctx_deckey int 8 regular {array 32 { 1 1 } 1 1 } {global 0}  }
	{ ctx_key int 8 regular {array 32 { 2 2 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buf_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "ctx_deckey", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "ctx_key", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf_r_address0 sc_out sc_lv 4 signal 0 } 
	{ buf_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ buf_r_we0 sc_out sc_logic 1 signal 0 } 
	{ buf_r_d0 sc_out sc_lv 8 signal 0 } 
	{ buf_r_q0 sc_in sc_lv 8 signal 0 } 
	{ buf_r_address1 sc_out sc_lv 4 signal 0 } 
	{ buf_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ buf_r_we1 sc_out sc_logic 1 signal 0 } 
	{ buf_r_d1 sc_out sc_lv 8 signal 0 } 
	{ buf_r_q1 sc_in sc_lv 8 signal 0 } 
	{ ctx_deckey_address0 sc_out sc_lv 5 signal 1 } 
	{ ctx_deckey_ce0 sc_out sc_logic 1 signal 1 } 
	{ ctx_deckey_q0 sc_in sc_lv 8 signal 1 } 
	{ ctx_deckey_address1 sc_out sc_lv 5 signal 1 } 
	{ ctx_deckey_ce1 sc_out sc_logic 1 signal 1 } 
	{ ctx_deckey_q1 sc_in sc_lv 8 signal 1 } 
	{ ctx_key_address0 sc_out sc_lv 5 signal 2 } 
	{ ctx_key_ce0 sc_out sc_logic 1 signal 2 } 
	{ ctx_key_we0 sc_out sc_logic 1 signal 2 } 
	{ ctx_key_d0 sc_out sc_lv 8 signal 2 } 
	{ ctx_key_q0 sc_in sc_lv 8 signal 2 } 
	{ ctx_key_address1 sc_out sc_lv 5 signal 2 } 
	{ ctx_key_ce1 sc_out sc_logic 1 signal 2 } 
	{ ctx_key_we1 sc_out sc_logic 1 signal 2 } 
	{ ctx_key_d1 sc_out sc_lv 8 signal 2 } 
	{ ctx_key_q1 sc_in sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "address0" }} , 
 	{ "name": "buf_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ce0" }} , 
 	{ "name": "buf_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "we0" }} , 
 	{ "name": "buf_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "d0" }} , 
 	{ "name": "buf_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "q0" }} , 
 	{ "name": "buf_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "address1" }} , 
 	{ "name": "buf_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ce1" }} , 
 	{ "name": "buf_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "we1" }} , 
 	{ "name": "buf_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "d1" }} , 
 	{ "name": "buf_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "q1" }} , 
 	{ "name": "ctx_deckey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "address0" }} , 
 	{ "name": "ctx_deckey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ce0" }} , 
 	{ "name": "ctx_deckey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "q0" }} , 
 	{ "name": "ctx_deckey_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "address1" }} , 
 	{ "name": "ctx_deckey_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "ce1" }} , 
 	{ "name": "ctx_deckey_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_deckey", "role": "q1" }} , 
 	{ "name": "ctx_key_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ctx_key", "role": "address0" }} , 
 	{ "name": "ctx_key_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "ce0" }} , 
 	{ "name": "ctx_key_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "we0" }} , 
 	{ "name": "ctx_key_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_key", "role": "d0" }} , 
 	{ "name": "ctx_key_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_key", "role": "q0" }} , 
 	{ "name": "ctx_key_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ctx_key", "role": "address1" }} , 
 	{ "name": "ctx_key_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "ce1" }} , 
 	{ "name": "ctx_key_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctx_key", "role": "we1" }} , 
 	{ "name": "ctx_key_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_key", "role": "d1" }} , 
 	{ "name": "ctx_key_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ctx_key", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5"],
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
			{"ID" : "4", "SubInstance" : "grp_aes_mixColumns_inv_fu_334", "Port" : "buf_r"},
			{"ID" : "5", "SubInstance" : "grp_aes_addRoundKey_fu_340", "Port" : "buf_r"}]},
		{"Name" : "ctx_deckey", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "ctx_key", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_aes_expandDecKey_fu_325", "Port" : "ctx_key"},
			{"ID" : "5", "SubInstance" : "grp_aes_addRoundKey_fu_340", "Port" : "key"}]},
		{"Name" : "sboxinv", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "2", "SubInstance" : "grp_aes_expandDecKey_fu_325", "Port" : "sbox"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandDecKey_fu_325"},
		{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_mixColumns_inv_fu_334"},
		{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"},
		{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"},
		{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sboxinv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandDecKey_fu_325", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandDecKey_fu_325.sbox_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_mixColumns_inv_fu_334", "Parent" : "0",
		"CDFG" : "aes_mixColumns_inv",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_addRoundKey_fu_340", "Parent" : "0",
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
		{"Name" : "key_offset", "Type" : "None", "Direction" : "I"}]}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1740", "Max" : "2377"}
	, {"Name" : "Interval", "Min" : "1740", "Max" : "2377"}
]}

set Spec2ImplPortList { 
	buf_r { ap_memory {  { buf_r_address0 mem_address 1 4 }  { buf_r_ce0 mem_ce 1 1 }  { buf_r_we0 mem_we 1 1 }  { buf_r_d0 mem_din 1 8 }  { buf_r_q0 mem_dout 0 8 }  { buf_r_address1 mem_address 1 4 }  { buf_r_ce1 mem_ce 1 1 }  { buf_r_we1 mem_we 1 1 }  { buf_r_d1 mem_din 1 8 }  { buf_r_q1 mem_dout 0 8 } } }
	ctx_deckey { ap_memory {  { ctx_deckey_address0 mem_address 1 5 }  { ctx_deckey_ce0 mem_ce 1 1 }  { ctx_deckey_q0 mem_dout 0 8 }  { ctx_deckey_address1 mem_address 1 5 }  { ctx_deckey_ce1 mem_ce 1 1 }  { ctx_deckey_q1 mem_dout 0 8 } } }
	ctx_key { ap_memory {  { ctx_key_address0 mem_address 1 5 }  { ctx_key_ce0 mem_ce 1 1 }  { ctx_key_we0 mem_we 1 1 }  { ctx_key_d0 mem_din 1 8 }  { ctx_key_q0 mem_dout 0 8 }  { ctx_key_address1 mem_address 1 5 }  { ctx_key_ce1 mem_ce 1 1 }  { ctx_key_we1 mem_we 1 1 }  { ctx_key_d1 mem_din 1 8 }  { ctx_key_q1 mem_dout 0 8 } } }
}
