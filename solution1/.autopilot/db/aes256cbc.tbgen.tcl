set C_TypeInfoList {{ 
"aes256cbc" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"memptr": [[],{ "pointer":  {"scalar": "unsigned char"}}] }, {"mode": [[],"0"] }, {"inbuf_addr": [[],"1"] }, {"outbuf_addr": [[],"1"] }],[],""], 
"1": [ "uint32_t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}], 
"0": [ "ciphermode_t", {"typedef": [[[], {"scalar": "2"}],""]}], 
"2": [ "", {"enum": [[],[],[{"RESET":  {"scalar": "__integer__"}},{"ENCRYPT":  {"scalar": "__integer__"}},{"DECRYPT":  {"scalar": "__integer__"}},{"SET_IV":  {"scalar": "__integer__"}},{"SET_KEY":  {"scalar": "__integer__"}}],""]}]
}}
set moduleName aes256cbc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {aes256cbc}
set C_modelType { void 0 }
set C_modelArgList {
	{ memptr int 8 regular {axi_master 2}  }
	{ mode uint 3 regular {axi_slave 0}  }
	{ inbuf_addr int 32 regular {axi_slave 0}  }
	{ outbuf_addr int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "memptr", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "memptr","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "mode", "interface" : "axi_slave", "bundle":"p0","type":"ap_none","bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "mode","cData": "enum ","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "inbuf_addr", "interface" : "axi_slave", "bundle":"p0","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "inbuf_addr","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "outbuf_addr", "interface" : "axi_slave", "bundle":"p0","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "outbuf_addr","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 82
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_memptr_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_memptr_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_memptr_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_memptr_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_memptr_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_memptr_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_memptr_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_memptr_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_memptr_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_memptr_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_memptr_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_memptr_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_memptr_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_memptr_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_memptr_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_memptr_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_memptr_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_memptr_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_memptr_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_memptr_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_memptr_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_memptr_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_memptr_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_memptr_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_memptr_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_memptr_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_memptr_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_memptr_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_memptr_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_memptr_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_memptr_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_memptr_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_memptr_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_memptr_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_memptr_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_memptr_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_memptr_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_memptr_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_memptr_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_memptr_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_memptr_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_memptr_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_memptr_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_memptr_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_memptr_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_p0_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_p0_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_p0_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_p0_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_p0_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_p0_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_p0_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_p0_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_p0_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_p0_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_p0_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_p0_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_p0_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_p0_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_p0_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_p0_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_p0_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"aes256cbc","role":"start","value":"0","valid_bit":"0"},{"name":"aes256cbc","role":"continue","value":"0","valid_bit":"4"},{"name":"aes256cbc","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"aes256cbc","role":"start","value":"0","valid_bit":"0"},{"name":"aes256cbc","role":"done","value":"0","valid_bit":"1"},{"name":"aes256cbc","role":"idle","value":"0","valid_bit":"2"},{"name":"aes256cbc","role":"ready","value":"0","valid_bit":"3"},{"name":"aes256cbc","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{ "name": "s_axi_p0_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p0", "role": "AWADDR" },"address":[{"name":"mode","role":"data","value":"16"},{"name":"inbuf_addr","role":"data","value":"24"},{"name":"outbuf_addr","role":"data","value":"32"}] },
	{ "name": "s_axi_p0_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "AWVALID" } },
	{ "name": "s_axi_p0_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "AWREADY" } },
	{ "name": "s_axi_p0_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "WVALID" } },
	{ "name": "s_axi_p0_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "WREADY" } },
	{ "name": "s_axi_p0_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p0", "role": "WDATA" } },
	{ "name": "s_axi_p0_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p0", "role": "WSTRB" } },
	{ "name": "s_axi_p0_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "p0", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_p0_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "ARVALID" } },
	{ "name": "s_axi_p0_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "ARREADY" } },
	{ "name": "s_axi_p0_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "RVALID" } },
	{ "name": "s_axi_p0_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "RREADY" } },
	{ "name": "s_axi_p0_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p0", "role": "RDATA" } },
	{ "name": "s_axi_p0_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p0", "role": "RRESP" } },
	{ "name": "s_axi_p0_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "BVALID" } },
	{ "name": "s_axi_p0_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "BREADY" } },
	{ "name": "s_axi_p0_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p0", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_memptr_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "AWVALID" }} , 
 	{ "name": "m_axi_memptr_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "AWREADY" }} , 
 	{ "name": "m_axi_memptr_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "memptr", "role": "AWADDR" }} , 
 	{ "name": "m_axi_memptr_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "AWID" }} , 
 	{ "name": "m_axi_memptr_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "memptr", "role": "AWLEN" }} , 
 	{ "name": "m_axi_memptr_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "memptr", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_memptr_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "memptr", "role": "AWBURST" }} , 
 	{ "name": "m_axi_memptr_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "memptr", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_memptr_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "memptr", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_memptr_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "memptr", "role": "AWPROT" }} , 
 	{ "name": "m_axi_memptr_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "memptr", "role": "AWQOS" }} , 
 	{ "name": "m_axi_memptr_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "memptr", "role": "AWREGION" }} , 
 	{ "name": "m_axi_memptr_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "AWUSER" }} , 
 	{ "name": "m_axi_memptr_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "WVALID" }} , 
 	{ "name": "m_axi_memptr_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "WREADY" }} , 
 	{ "name": "m_axi_memptr_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "memptr", "role": "WDATA" }} , 
 	{ "name": "m_axi_memptr_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "memptr", "role": "WSTRB" }} , 
 	{ "name": "m_axi_memptr_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "WLAST" }} , 
 	{ "name": "m_axi_memptr_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "WID" }} , 
 	{ "name": "m_axi_memptr_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "WUSER" }} , 
 	{ "name": "m_axi_memptr_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "ARVALID" }} , 
 	{ "name": "m_axi_memptr_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "ARREADY" }} , 
 	{ "name": "m_axi_memptr_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "memptr", "role": "ARADDR" }} , 
 	{ "name": "m_axi_memptr_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "ARID" }} , 
 	{ "name": "m_axi_memptr_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "memptr", "role": "ARLEN" }} , 
 	{ "name": "m_axi_memptr_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "memptr", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_memptr_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "memptr", "role": "ARBURST" }} , 
 	{ "name": "m_axi_memptr_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "memptr", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_memptr_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "memptr", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_memptr_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "memptr", "role": "ARPROT" }} , 
 	{ "name": "m_axi_memptr_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "memptr", "role": "ARQOS" }} , 
 	{ "name": "m_axi_memptr_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "memptr", "role": "ARREGION" }} , 
 	{ "name": "m_axi_memptr_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "ARUSER" }} , 
 	{ "name": "m_axi_memptr_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "RVALID" }} , 
 	{ "name": "m_axi_memptr_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "RREADY" }} , 
 	{ "name": "m_axi_memptr_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "memptr", "role": "RDATA" }} , 
 	{ "name": "m_axi_memptr_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "RLAST" }} , 
 	{ "name": "m_axi_memptr_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "RID" }} , 
 	{ "name": "m_axi_memptr_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "RUSER" }} , 
 	{ "name": "m_axi_memptr_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "memptr", "role": "RRESP" }} , 
 	{ "name": "m_axi_memptr_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "BVALID" }} , 
 	{ "name": "m_axi_memptr_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "BREADY" }} , 
 	{ "name": "m_axi_memptr_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "memptr", "role": "BRESP" }} , 
 	{ "name": "m_axi_memptr_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "BID" }} , 
 	{ "name": "m_axi_memptr_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "memptr", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "17", "23"],
		"CDFG" : "aes256cbc",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "memptr", "Type" : "MAXI", "Direction" : "IO",
			"BlockSignal" : [
			{"Name" : "memptr_blk_n_AR", "Type" : "RtlSignal"},
			{"Name" : "memptr_blk_n_R", "Type" : "RtlSignal"},
			{"Name" : "memptr_blk_n_AW", "Type" : "RtlSignal"},
			{"Name" : "memptr_blk_n_W", "Type" : "RtlSignal"},
			{"Name" : "memptr_blk_n_B", "Type" : "RtlSignal"}]},
		{"Name" : "mode", "Type" : "None", "Direction" : "I"},
		{"Name" : "inbuf_addr", "Type" : "None", "Direction" : "I"},
		{"Name" : "outbuf_addr", "Type" : "None", "Direction" : "I"},
		{"Name" : "iv", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "xorv", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "key", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "ctx_deckey", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "17", "SubInstance" : "grp_aes256_decrypt_ecb_fu_555", "Port" : "ctx_deckey"},
			{"ID" : "23", "SubInstance" : "grp_aes_expandEncKey_fu_568", "Port" : "k"}]},
		{"Name" : "ctx_enckey", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "12", "SubInstance" : "grp_aes256_encrypt_ecb_fu_544", "Port" : "ctx_enckey"}]},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "12", "SubInstance" : "grp_aes256_encrypt_ecb_fu_544", "Port" : "sbox"},
			{"ID" : "17", "SubInstance" : "grp_aes256_decrypt_ecb_fu_555", "Port" : "sbox"},
			{"ID" : "23", "SubInstance" : "grp_aes_expandEncKey_fu_568", "Port" : "sbox"}]},
		{"Name" : "ctx_key", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "12", "SubInstance" : "grp_aes256_encrypt_ecb_fu_544", "Port" : "ctx_key"},
			{"ID" : "17", "SubInstance" : "grp_aes256_decrypt_ecb_fu_555", "Port" : "ctx_key"}]},
		{"Name" : "lastbuf", "Type" : "Memory", "Direction" : "IO"},
		{"Name" : "sboxinv", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "17", "SubInstance" : "grp_aes256_decrypt_ecb_fu_555", "Port" : "sboxinv"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state42", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes256_encrypt_ecb_fu_544"},
		{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes256_decrypt_ecb_fu_555"},
		{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_568"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.iv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xorv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.key_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_deckey_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_enckey_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctx_key_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lastbuf_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes256cbc_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes256cbc_p0_s_axi_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aes256cbc_memptr_m_axi_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes256_encrypt_ecb_fu_544", "Parent" : "0", "Child" : ["13", "14", "16"],
		"CDFG" : "aes256_encrypt_ecb",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "16", "SubInstance" : "grp_aes_addRoundKey_fu_377", "Port" : "buf_r"}]},
		{"Name" : "ctx_enckey", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "ctx_key", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "16", "SubInstance" : "grp_aes_addRoundKey_fu_377", "Port" : "key"},
			{"ID" : "14", "SubInstance" : "grp_aes_expandEncKey_fu_368", "Port" : "k"}]},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "14", "SubInstance" : "grp_aes_expandEncKey_fu_368", "Port" : "sbox"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_368"},
		{"State" : "ap_ST_fsm_state41", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandEncKey_fu_368"},
		{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_377"},
		{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_377"},
		{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_377"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes256_encrypt_ecb_fu_544.sbox_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes256_encrypt_ecb_fu_544.grp_aes_expandEncKey_fu_368", "Parent" : "12", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes256_encrypt_ecb_fu_544.grp_aes_expandEncKey_fu_368.sbox_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes256_encrypt_ecb_fu_544.grp_aes_addRoundKey_fu_377", "Parent" : "12",
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
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes256_decrypt_ecb_fu_555", "Parent" : "0", "Child" : ["18", "19", "21", "22"],
		"CDFG" : "aes256_decrypt_ecb",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "21", "SubInstance" : "grp_aes_mixColumns_inv_fu_334", "Port" : "buf_r"},
			{"ID" : "22", "SubInstance" : "grp_aes_addRoundKey_fu_340", "Port" : "buf_r"}]},
		{"Name" : "ctx_deckey", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "ctx_key", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "19", "SubInstance" : "grp_aes_expandDecKey_fu_325", "Port" : "ctx_key"},
			{"ID" : "22", "SubInstance" : "grp_aes_addRoundKey_fu_340", "Port" : "key"}]},
		{"Name" : "sboxinv", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "19", "SubInstance" : "grp_aes_expandDecKey_fu_325", "Port" : "sbox"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_expandDecKey_fu_325"},
		{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_mixColumns_inv_fu_334"},
		{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"},
		{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"},
		{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes_addRoundKey_fu_340"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes256_decrypt_ecb_fu_555.sboxinv_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes256_decrypt_ecb_fu_555.grp_aes_expandDecKey_fu_325", "Parent" : "17", "Child" : ["20"],
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
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_aes256_decrypt_ecb_fu_555.grp_aes_expandDecKey_fu_325.sbox_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes256_decrypt_ecb_fu_555.grp_aes_mixColumns_inv_fu_334", "Parent" : "17",
		"CDFG" : "aes_mixColumns_inv",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes256_decrypt_ecb_fu_555.grp_aes_addRoundKey_fu_340", "Parent" : "17",
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
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_568", "Parent" : "0", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aes_expandEncKey_fu_568.sbox_U", "Parent" : "23"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "2526"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "2527"}
]}

set Spec2ImplPortList { 
	memptr { m_axi {  { m_axi_memptr_AWVALID VALID 1 1 }  { m_axi_memptr_AWREADY READY 0 1 }  { m_axi_memptr_AWADDR ADDR 1 32 }  { m_axi_memptr_AWID ID 1 1 }  { m_axi_memptr_AWLEN LEN 1 8 }  { m_axi_memptr_AWSIZE SIZE 1 3 }  { m_axi_memptr_AWBURST BURST 1 2 }  { m_axi_memptr_AWLOCK LOCK 1 2 }  { m_axi_memptr_AWCACHE CACHE 1 4 }  { m_axi_memptr_AWPROT PROT 1 3 }  { m_axi_memptr_AWQOS QOS 1 4 }  { m_axi_memptr_AWREGION REGION 1 4 }  { m_axi_memptr_AWUSER USER 1 1 }  { m_axi_memptr_WVALID VALID 1 1 }  { m_axi_memptr_WREADY READY 0 1 }  { m_axi_memptr_WDATA DATA 1 32 }  { m_axi_memptr_WSTRB STRB 1 4 }  { m_axi_memptr_WLAST LAST 1 1 }  { m_axi_memptr_WID ID 1 1 }  { m_axi_memptr_WUSER USER 1 1 }  { m_axi_memptr_ARVALID VALID 1 1 }  { m_axi_memptr_ARREADY READY 0 1 }  { m_axi_memptr_ARADDR ADDR 1 32 }  { m_axi_memptr_ARID ID 1 1 }  { m_axi_memptr_ARLEN LEN 1 8 }  { m_axi_memptr_ARSIZE SIZE 1 3 }  { m_axi_memptr_ARBURST BURST 1 2 }  { m_axi_memptr_ARLOCK LOCK 1 2 }  { m_axi_memptr_ARCACHE CACHE 1 4 }  { m_axi_memptr_ARPROT PROT 1 3 }  { m_axi_memptr_ARQOS QOS 1 4 }  { m_axi_memptr_ARREGION REGION 1 4 }  { m_axi_memptr_ARUSER USER 1 1 }  { m_axi_memptr_RVALID VALID 0 1 }  { m_axi_memptr_RREADY READY 1 1 }  { m_axi_memptr_RDATA DATA 0 32 }  { m_axi_memptr_RLAST LAST 0 1 }  { m_axi_memptr_RID ID 0 1 }  { m_axi_memptr_RUSER USER 0 1 }  { m_axi_memptr_RRESP RESP 0 2 }  { m_axi_memptr_BVALID VALID 0 1 }  { m_axi_memptr_BREADY READY 1 1 }  { m_axi_memptr_BRESP RESP 0 2 }  { m_axi_memptr_BID ID 0 1 }  { m_axi_memptr_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ memptr { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ memptr 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ memptr 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
