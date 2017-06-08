// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aescbc_HH_
#define _aescbc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_encrypt_ecb.h"
#include "aes_decrypt_ecb.h"
#include "aes_expandEncKey.h"
#include "aescbc_key.h"
#include "aescbc_iv.h"
#include "aescbc_ctx_deckey.h"
#include "aescbc_ctx_enckey.h"
#include "aescbc_buf.h"
#include "aescbc_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 7,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct aescbc : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    aescbc(sc_module_name name);
    SC_HAS_PROCESS(aescbc);

    ~aescbc();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    aescbc_key* key_U;
    aescbc_iv* iv_U;
    aescbc_iv* xorv_U;
    aescbc_ctx_deckey* ctx_deckey_U;
    aescbc_ctx_enckey* ctx_enckey_U;
    aescbc_ctx_deckey* ctx_key_U;
    aescbc_iv* lastbuf_U;
    aescbc_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* aescbc_AXILiteS_s_axi_U;
    aescbc_buf* buf_U;
    aes_encrypt_ecb* grp_aes_encrypt_ecb_fu_590;
    aes_decrypt_ecb* grp_aes_decrypt_ecb_fu_601;
    aes_expandEncKey* grp_aes_expandEncKey_fu_614;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<31> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<4> > data_in_address0;
    sc_signal< sc_logic > data_in_ce0;
    sc_signal< sc_lv<8> > data_in_q0;
    sc_signal< sc_lv<4> > data_out_address0;
    sc_signal< sc_logic > data_out_ce0;
    sc_signal< sc_logic > data_out_we0;
    sc_signal< sc_lv<8> > data_out_d0;
    sc_signal< sc_lv<3> > mode;
    sc_signal< sc_lv<5> > key_in_address0;
    sc_signal< sc_logic > key_in_ce0;
    sc_signal< sc_lv<8> > key_in_q0;
    sc_signal< sc_lv<4> > iv_in_address0;
    sc_signal< sc_logic > iv_in_ce0;
    sc_signal< sc_lv<8> > iv_in_q0;
    sc_signal< sc_lv<5> > key_address0;
    sc_signal< sc_logic > key_ce0;
    sc_signal< sc_logic > key_we0;
    sc_signal< sc_lv<8> > key_q0;
    sc_signal< sc_lv<4> > iv_address0;
    sc_signal< sc_logic > iv_ce0;
    sc_signal< sc_logic > iv_we0;
    sc_signal< sc_lv<8> > iv_q0;
    sc_signal< sc_lv<4> > xorv_address0;
    sc_signal< sc_logic > xorv_ce0;
    sc_signal< sc_logic > xorv_we0;
    sc_signal< sc_lv<8> > xorv_d0;
    sc_signal< sc_lv<8> > xorv_q0;
    sc_signal< sc_lv<5> > ctx_deckey_address0;
    sc_signal< sc_logic > ctx_deckey_ce0;
    sc_signal< sc_logic > ctx_deckey_we0;
    sc_signal< sc_lv<8> > ctx_deckey_d0;
    sc_signal< sc_lv<8> > ctx_deckey_q0;
    sc_signal< sc_lv<5> > ctx_deckey_address1;
    sc_signal< sc_logic > ctx_deckey_ce1;
    sc_signal< sc_logic > ctx_deckey_we1;
    sc_signal< sc_lv<8> > ctx_deckey_q1;
    sc_signal< sc_lv<5> > ctx_enckey_address0;
    sc_signal< sc_logic > ctx_enckey_ce0;
    sc_signal< sc_logic > ctx_enckey_we0;
    sc_signal< sc_lv<8> > ctx_enckey_q0;
    sc_signal< sc_logic > ctx_enckey_ce1;
    sc_signal< sc_lv<8> > ctx_enckey_q1;
    sc_signal< sc_lv<5> > ctx_key_address0;
    sc_signal< sc_logic > ctx_key_ce0;
    sc_signal< sc_logic > ctx_key_we0;
    sc_signal< sc_lv<8> > ctx_key_d0;
    sc_signal< sc_lv<8> > ctx_key_q0;
    sc_signal< sc_lv<5> > ctx_key_address1;
    sc_signal< sc_logic > ctx_key_ce1;
    sc_signal< sc_logic > ctx_key_we1;
    sc_signal< sc_lv<8> > ctx_key_d1;
    sc_signal< sc_lv<8> > ctx_key_q1;
    sc_signal< sc_lv<4> > lastbuf_address0;
    sc_signal< sc_logic > lastbuf_ce0;
    sc_signal< sc_logic > lastbuf_we0;
    sc_signal< sc_lv<8> > lastbuf_q0;
    sc_signal< sc_lv<3> > mode_read_read_fu_136_p2;
    sc_signal< sc_lv<3> > mode_read_reg_883;
    sc_signal< sc_lv<5> > i_14_fu_637_p2;
    sc_signal< sc_lv<5> > i_14_reg_890;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_s_fu_643_p1;
    sc_signal< sc_lv<64> > tmp_s_reg_895;
    sc_signal< sc_lv<1> > tmp_5_fu_631_p2;
    sc_signal< sc_lv<5> > i_17_fu_654_p2;
    sc_signal< sc_lv<5> > i_17_reg_908;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > tmp_12_fu_660_p1;
    sc_signal< sc_lv<64> > tmp_12_reg_913;
    sc_signal< sc_lv<1> > tmp_7_fu_648_p2;
    sc_signal< sc_lv<5> > i_20_fu_671_p2;
    sc_signal< sc_lv<5> > i_20_reg_926;
    sc_signal< sc_lv<1> > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > buf_addr_5_reg_931;
    sc_signal< sc_lv<1> > tmp_15_fu_665_p2;
    sc_signal< sc_lv<5> > i_23_fu_689_p2;
    sc_signal< sc_lv<5> > i_23_reg_944;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<64> > tmp_25_fu_695_p1;
    sc_signal< sc_lv<64> > tmp_25_reg_949;
    sc_signal< sc_lv<1> > tmp_22_fu_683_p2;
    sc_signal< sc_lv<5> > i_24_fu_706_p2;
    sc_signal< sc_lv<5> > i_24_reg_962;
    sc_signal< sc_lv<1> > ap_CS_fsm_state11;
    sc_signal< sc_lv<64> > tmp_27_fu_712_p1;
    sc_signal< sc_lv<64> > tmp_27_reg_967;
    sc_signal< sc_lv<1> > tmp_26_fu_700_p2;
    sc_signal< sc_lv<3> > phitmp_i_fu_723_p2;
    sc_signal< sc_lv<3> > phitmp_i_reg_980;
    sc_signal< sc_lv<1> > tmp_86_i_fu_717_p2;
    sc_signal< sc_lv<5> > i_13_fu_735_p2;
    sc_signal< sc_lv<5> > i_13_reg_988;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_lv<64> > tmp_8_fu_741_p1;
    sc_signal< sc_lv<64> > tmp_8_reg_993;
    sc_signal< sc_lv<1> > tmp_4_fu_729_p2;
    sc_signal< sc_lv<5> > i_16_fu_752_p2;
    sc_signal< sc_lv<5> > i_16_reg_1006;
    sc_signal< sc_lv<1> > ap_CS_fsm_state15;
    sc_signal< sc_lv<4> > buf_addr_2_reg_1011;
    sc_signal< sc_lv<1> > tmp_2_fu_746_p2;
    sc_signal< sc_lv<5> > i_19_fu_770_p2;
    sc_signal< sc_lv<5> > i_19_reg_1024;
    sc_signal< sc_lv<1> > ap_CS_fsm_state18;
    sc_signal< sc_lv<64> > tmp_17_fu_776_p1;
    sc_signal< sc_lv<64> > tmp_17_reg_1029;
    sc_signal< sc_lv<1> > tmp_14_fu_764_p2;
    sc_signal< sc_lv<5> > i_22_fu_787_p2;
    sc_signal< sc_lv<5> > i_22_reg_1042;
    sc_signal< sc_lv<1> > ap_CS_fsm_state20;
    sc_signal< sc_lv<64> > tmp_24_fu_793_p1;
    sc_signal< sc_lv<64> > tmp_24_reg_1047;
    sc_signal< sc_lv<1> > tmp_21_fu_781_p2;
    sc_signal< sc_lv<5> > i_12_fu_804_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state22;
    sc_signal< sc_lv<6> > i_15_fu_821_p2;
    sc_signal< sc_lv<6> > i_15_reg_1068;
    sc_signal< sc_lv<1> > ap_CS_fsm_state23;
    sc_signal< sc_lv<64> > tmp_9_fu_827_p1;
    sc_signal< sc_lv<64> > tmp_9_reg_1073;
    sc_signal< sc_lv<1> > tmp_1_fu_815_p2;
    sc_signal< sc_lv<5> > i_18_fu_838_p2;
    sc_signal< sc_lv<5> > i_18_reg_1086;
    sc_signal< sc_lv<1> > ap_CS_fsm_state25;
    sc_signal< sc_lv<64> > tmp_16_fu_844_p1;
    sc_signal< sc_lv<64> > tmp_16_reg_1091;
    sc_signal< sc_lv<1> > tmp_13_fu_832_p2;
    sc_signal< sc_lv<5> > i_21_fu_855_p2;
    sc_signal< sc_lv<5> > i_21_reg_1104;
    sc_signal< sc_lv<1> > ap_CS_fsm_state27;
    sc_signal< sc_lv<64> > tmp_23_fu_861_p1;
    sc_signal< sc_lv<64> > tmp_23_reg_1109;
    sc_signal< sc_lv<1> > tmp_20_fu_849_p2;
    sc_signal< sc_lv<6> > i_25_fu_872_p2;
    sc_signal< sc_lv<6> > i_25_reg_1122;
    sc_signal< sc_lv<1> > ap_CS_fsm_state29;
    sc_signal< sc_lv<64> > tmp_i_13_fu_878_p1;
    sc_signal< sc_lv<64> > tmp_i_13_reg_1127;
    sc_signal< sc_lv<1> > tmp_i_fu_866_p2;
    sc_signal< sc_lv<8> > grp_aes_expandEncKey_fu_614_ap_return;
    sc_signal< sc_lv<1> > ap_CS_fsm_state31;
    sc_signal< sc_logic > grp_aes_expandEncKey_fu_614_ap_done;
    sc_signal< sc_lv<4> > buf_address0;
    sc_signal< sc_logic > buf_ce0;
    sc_signal< sc_logic > buf_we0;
    sc_signal< sc_lv<8> > buf_d0;
    sc_signal< sc_lv<8> > buf_q0;
    sc_signal< sc_lv<4> > buf_address1;
    sc_signal< sc_logic > buf_ce1;
    sc_signal< sc_logic > buf_we1;
    sc_signal< sc_lv<8> > buf_d1;
    sc_signal< sc_lv<8> > buf_q1;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ap_start;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ap_done;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ap_idle;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_encrypt_ecb_fu_590_buf_r_address0;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_buf_r_ce0;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_buf_r_we0;
    sc_signal< sc_lv<8> > grp_aes_encrypt_ecb_fu_590_buf_r_d0;
    sc_signal< sc_lv<4> > grp_aes_encrypt_ecb_fu_590_buf_r_address1;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_buf_r_ce1;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_buf_r_we1;
    sc_signal< sc_lv<8> > grp_aes_encrypt_ecb_fu_590_buf_r_d1;
    sc_signal< sc_lv<5> > grp_aes_encrypt_ecb_fu_590_ctx_enckey_address0;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ctx_enckey_ce0;
    sc_signal< sc_lv<5> > grp_aes_encrypt_ecb_fu_590_ctx_enckey_address1;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ctx_enckey_ce1;
    sc_signal< sc_lv<5> > grp_aes_encrypt_ecb_fu_590_ctx_key_address0;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ctx_key_ce0;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ctx_key_we0;
    sc_signal< sc_lv<8> > grp_aes_encrypt_ecb_fu_590_ctx_key_d0;
    sc_signal< sc_lv<5> > grp_aes_encrypt_ecb_fu_590_ctx_key_address1;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ctx_key_ce1;
    sc_signal< sc_logic > grp_aes_encrypt_ecb_fu_590_ctx_key_we1;
    sc_signal< sc_lv<8> > grp_aes_encrypt_ecb_fu_590_ctx_key_d1;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ap_start;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ap_done;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ap_idle;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_decrypt_ecb_fu_601_buf_r_address0;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_buf_r_ce0;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_buf_r_we0;
    sc_signal< sc_lv<8> > grp_aes_decrypt_ecb_fu_601_buf_r_d0;
    sc_signal< sc_lv<4> > grp_aes_decrypt_ecb_fu_601_buf_r_address1;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_buf_r_ce1;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_buf_r_we1;
    sc_signal< sc_lv<8> > grp_aes_decrypt_ecb_fu_601_buf_r_d1;
    sc_signal< sc_lv<5> > grp_aes_decrypt_ecb_fu_601_ctx_deckey_address0;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ctx_deckey_ce0;
    sc_signal< sc_lv<5> > grp_aes_decrypt_ecb_fu_601_ctx_deckey_address1;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ctx_deckey_ce1;
    sc_signal< sc_lv<5> > grp_aes_decrypt_ecb_fu_601_ctx_key_address0;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ctx_key_ce0;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ctx_key_we0;
    sc_signal< sc_lv<8> > grp_aes_decrypt_ecb_fu_601_ctx_key_d0;
    sc_signal< sc_lv<5> > grp_aes_decrypt_ecb_fu_601_ctx_key_address1;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ctx_key_ce1;
    sc_signal< sc_logic > grp_aes_decrypt_ecb_fu_601_ctx_key_we1;
    sc_signal< sc_lv<8> > grp_aes_decrypt_ecb_fu_601_ctx_key_d1;
    sc_signal< sc_logic > grp_aes_expandEncKey_fu_614_ap_start;
    sc_signal< sc_logic > grp_aes_expandEncKey_fu_614_ap_idle;
    sc_signal< sc_logic > grp_aes_expandEncKey_fu_614_ap_ready;
    sc_signal< sc_lv<5> > grp_aes_expandEncKey_fu_614_k_address0;
    sc_signal< sc_logic > grp_aes_expandEncKey_fu_614_k_ce0;
    sc_signal< sc_logic > grp_aes_expandEncKey_fu_614_k_we0;
    sc_signal< sc_lv<8> > grp_aes_expandEncKey_fu_614_k_d0;
    sc_signal< sc_lv<5> > grp_aes_expandEncKey_fu_614_k_address1;
    sc_signal< sc_logic > grp_aes_expandEncKey_fu_614_k_ce1;
    sc_signal< sc_logic > grp_aes_expandEncKey_fu_614_k_we1;
    sc_signal< sc_lv<8> > grp_aes_expandEncKey_fu_614_k_d1;
    sc_signal< sc_lv<5> > i_8_reg_413;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > i_9_reg_424;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<5> > i_s_reg_435;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > i_10_reg_446;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<5> > i_11_reg_457;
    sc_signal< sc_lv<1> > ap_CS_fsm_state12;
    sc_signal< sc_lv<8> > rcon_i_reg_468;
    sc_signal< sc_lv<3> > i_26_reg_480;
    sc_signal< sc_lv<5> > i_4_reg_491;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_lv<5> > i_5_reg_502;
    sc_signal< sc_lv<1> > ap_CS_fsm_state16;
    sc_signal< sc_lv<5> > i_6_reg_513;
    sc_signal< sc_lv<1> > ap_CS_fsm_state17;
    sc_signal< sc_lv<1> > ap_CS_fsm_state19;
    sc_signal< sc_lv<5> > i_7_reg_524;
    sc_signal< sc_lv<1> > ap_CS_fsm_state21;
    sc_signal< sc_lv<5> > i_reg_535;
    sc_signal< sc_lv<1> > tmp_3_fu_798_p2;
    sc_signal< sc_lv<6> > i_1_reg_546;
    sc_signal< sc_lv<1> > ap_CS_fsm_state24;
    sc_signal< sc_lv<5> > i_2_reg_557;
    sc_signal< sc_lv<1> > ap_CS_fsm_state26;
    sc_signal< sc_lv<5> > i_3_reg_568;
    sc_signal< sc_lv<1> > ap_CS_fsm_state28;
    sc_signal< sc_lv<6> > i_i_reg_579;
    sc_signal< sc_lv<1> > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_reg_grp_aes_encrypt_ecb_fu_590_ap_start;
    sc_signal< sc_logic > ap_reg_grp_aes_decrypt_ecb_fu_601_ap_start;
    sc_signal< sc_logic > ap_reg_grp_aes_expandEncKey_fu_614_ap_start;
    sc_signal< sc_lv<64> > tmp_18_fu_677_p1;
    sc_signal< sc_lv<64> > tmp_10_fu_758_p1;
    sc_signal< sc_lv<64> > tmp_6_fu_810_p1;
    sc_signal< sc_lv<8> > grp_fu_624_p2;
    sc_signal< sc_lv<31> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<31> ap_ST_fsm_state1;
    static const sc_lv<31> ap_ST_fsm_state2;
    static const sc_lv<31> ap_ST_fsm_state3;
    static const sc_lv<31> ap_ST_fsm_state4;
    static const sc_lv<31> ap_ST_fsm_state5;
    static const sc_lv<31> ap_ST_fsm_state6;
    static const sc_lv<31> ap_ST_fsm_state7;
    static const sc_lv<31> ap_ST_fsm_state8;
    static const sc_lv<31> ap_ST_fsm_state9;
    static const sc_lv<31> ap_ST_fsm_state10;
    static const sc_lv<31> ap_ST_fsm_state11;
    static const sc_lv<31> ap_ST_fsm_state12;
    static const sc_lv<31> ap_ST_fsm_state13;
    static const sc_lv<31> ap_ST_fsm_state14;
    static const sc_lv<31> ap_ST_fsm_state15;
    static const sc_lv<31> ap_ST_fsm_state16;
    static const sc_lv<31> ap_ST_fsm_state17;
    static const sc_lv<31> ap_ST_fsm_state18;
    static const sc_lv<31> ap_ST_fsm_state19;
    static const sc_lv<31> ap_ST_fsm_state20;
    static const sc_lv<31> ap_ST_fsm_state21;
    static const sc_lv<31> ap_ST_fsm_state22;
    static const sc_lv<31> ap_ST_fsm_state23;
    static const sc_lv<31> ap_ST_fsm_state24;
    static const sc_lv<31> ap_ST_fsm_state25;
    static const sc_lv<31> ap_ST_fsm_state26;
    static const sc_lv<31> ap_ST_fsm_state27;
    static const sc_lv<31> ap_ST_fsm_state28;
    static const sc_lv<31> ap_ST_fsm_state29;
    static const sc_lv<31> ap_ST_fsm_state30;
    static const sc_lv<31> ap_ST_fsm_state31;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_buf_address0();
    void thread_buf_address1();
    void thread_buf_ce0();
    void thread_buf_ce1();
    void thread_buf_d0();
    void thread_buf_d1();
    void thread_buf_we0();
    void thread_buf_we1();
    void thread_ctx_deckey_address0();
    void thread_ctx_deckey_address1();
    void thread_ctx_deckey_ce0();
    void thread_ctx_deckey_ce1();
    void thread_ctx_deckey_d0();
    void thread_ctx_deckey_we0();
    void thread_ctx_deckey_we1();
    void thread_ctx_enckey_address0();
    void thread_ctx_enckey_ce0();
    void thread_ctx_enckey_ce1();
    void thread_ctx_enckey_we0();
    void thread_ctx_key_address0();
    void thread_ctx_key_address1();
    void thread_ctx_key_ce0();
    void thread_ctx_key_ce1();
    void thread_ctx_key_d0();
    void thread_ctx_key_d1();
    void thread_ctx_key_we0();
    void thread_ctx_key_we1();
    void thread_data_in_address0();
    void thread_data_in_ce0();
    void thread_data_out_address0();
    void thread_data_out_ce0();
    void thread_data_out_d0();
    void thread_data_out_we0();
    void thread_grp_aes_decrypt_ecb_fu_601_ap_start();
    void thread_grp_aes_encrypt_ecb_fu_590_ap_start();
    void thread_grp_aes_expandEncKey_fu_614_ap_start();
    void thread_grp_fu_624_p2();
    void thread_i_12_fu_804_p2();
    void thread_i_13_fu_735_p2();
    void thread_i_14_fu_637_p2();
    void thread_i_15_fu_821_p2();
    void thread_i_16_fu_752_p2();
    void thread_i_17_fu_654_p2();
    void thread_i_18_fu_838_p2();
    void thread_i_19_fu_770_p2();
    void thread_i_20_fu_671_p2();
    void thread_i_21_fu_855_p2();
    void thread_i_22_fu_787_p2();
    void thread_i_23_fu_689_p2();
    void thread_i_24_fu_706_p2();
    void thread_i_25_fu_872_p2();
    void thread_iv_address0();
    void thread_iv_ce0();
    void thread_iv_in_address0();
    void thread_iv_in_ce0();
    void thread_iv_we0();
    void thread_key_address0();
    void thread_key_ce0();
    void thread_key_in_address0();
    void thread_key_in_ce0();
    void thread_key_we0();
    void thread_lastbuf_address0();
    void thread_lastbuf_ce0();
    void thread_lastbuf_we0();
    void thread_mode_read_read_fu_136_p2();
    void thread_phitmp_i_fu_723_p2();
    void thread_tmp_10_fu_758_p1();
    void thread_tmp_12_fu_660_p1();
    void thread_tmp_13_fu_832_p2();
    void thread_tmp_14_fu_764_p2();
    void thread_tmp_15_fu_665_p2();
    void thread_tmp_16_fu_844_p1();
    void thread_tmp_17_fu_776_p1();
    void thread_tmp_18_fu_677_p1();
    void thread_tmp_1_fu_815_p2();
    void thread_tmp_20_fu_849_p2();
    void thread_tmp_21_fu_781_p2();
    void thread_tmp_22_fu_683_p2();
    void thread_tmp_23_fu_861_p1();
    void thread_tmp_24_fu_793_p1();
    void thread_tmp_25_fu_695_p1();
    void thread_tmp_26_fu_700_p2();
    void thread_tmp_27_fu_712_p1();
    void thread_tmp_2_fu_746_p2();
    void thread_tmp_3_fu_798_p2();
    void thread_tmp_4_fu_729_p2();
    void thread_tmp_5_fu_631_p2();
    void thread_tmp_6_fu_810_p1();
    void thread_tmp_7_fu_648_p2();
    void thread_tmp_86_i_fu_717_p2();
    void thread_tmp_8_fu_741_p1();
    void thread_tmp_9_fu_827_p1();
    void thread_tmp_i_13_fu_878_p1();
    void thread_tmp_i_fu_866_p2();
    void thread_tmp_s_fu_643_p1();
    void thread_xorv_address0();
    void thread_xorv_ce0();
    void thread_xorv_d0();
    void thread_xorv_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
