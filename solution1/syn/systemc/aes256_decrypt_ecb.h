// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes256_decrypt_ecb_HH_
#define _aes256_decrypt_ecb_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "aes_expandDecKey.h"
#include "aes_mixColumns_inv.h"
#include "aes_addRoundKey.h"
#include "aes256_decrypt_eccud.h"

namespace ap_rtl {

struct aes256_decrypt_ecb : public sc_module {
    // Port declarations 32
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > buf_r_address0;
    sc_out< sc_logic > buf_r_ce0;
    sc_out< sc_logic > buf_r_we0;
    sc_out< sc_lv<8> > buf_r_d0;
    sc_in< sc_lv<8> > buf_r_q0;
    sc_out< sc_lv<4> > buf_r_address1;
    sc_out< sc_logic > buf_r_ce1;
    sc_out< sc_logic > buf_r_we1;
    sc_out< sc_lv<8> > buf_r_d1;
    sc_in< sc_lv<8> > buf_r_q1;
    sc_out< sc_lv<5> > ctx_deckey_address0;
    sc_out< sc_logic > ctx_deckey_ce0;
    sc_in< sc_lv<8> > ctx_deckey_q0;
    sc_out< sc_lv<5> > ctx_deckey_address1;
    sc_out< sc_logic > ctx_deckey_ce1;
    sc_in< sc_lv<8> > ctx_deckey_q1;
    sc_out< sc_lv<5> > ctx_key_address0;
    sc_out< sc_logic > ctx_key_ce0;
    sc_out< sc_logic > ctx_key_we0;
    sc_out< sc_lv<8> > ctx_key_d0;
    sc_in< sc_lv<8> > ctx_key_q0;
    sc_out< sc_lv<5> > ctx_key_address1;
    sc_out< sc_logic > ctx_key_ce1;
    sc_out< sc_logic > ctx_key_we1;
    sc_out< sc_lv<8> > ctx_key_d1;
    sc_in< sc_lv<8> > ctx_key_q1;


    // Module declarations
    aes256_decrypt_ecb(sc_module_name name);
    SC_HAS_PROCESS(aes256_decrypt_ecb);

    ~aes256_decrypt_ecb();

    sc_trace_file* mVcdFile;

    aes256_decrypt_eccud* sboxinv_U;
    aes_expandDecKey* grp_aes_expandDecKey_fu_325;
    aes_mixColumns_inv* grp_aes_mixColumns_inv_fu_334;
    aes_addRoundKey* grp_aes_addRoundKey_fu_340;
    sc_signal< sc_lv<40> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > sboxinv_address0;
    sc_signal< sc_logic > sboxinv_ce0;
    sc_signal< sc_lv<8> > sboxinv_q0;
    sc_signal< sc_lv<8> > reg_351;
    sc_signal< sc_lv<1> > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > ap_CS_fsm_state26;
    sc_signal< sc_lv<8> > reg_356;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > ap_CS_fsm_state31;
    sc_signal< sc_lv<8> > reg_363;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > ap_CS_fsm_state27;
    sc_signal< sc_lv<8> > reg_370;
    sc_signal< sc_lv<8> > reg_375;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > ap_CS_fsm_state28;
    sc_signal< sc_lv<8> > reg_380;
    sc_signal< sc_lv<8> > reg_385;
    sc_signal< sc_lv<1> > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > ap_CS_fsm_state29;
    sc_signal< sc_lv<8> > reg_390;
    sc_signal< sc_lv<8> > reg_395;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > ap_CS_fsm_state30;
    sc_signal< sc_lv<8> > reg_400;
    sc_signal< sc_lv<5> > i_23_fu_405_p2;
    sc_signal< sc_lv<5> > i_23_reg_527;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_i_38_fu_421_p1;
    sc_signal< sc_lv<64> > tmp_i_38_reg_535;
    sc_signal< sc_lv<1> > tmp_i_fu_415_p2;
    sc_signal< sc_lv<4> > buf_addr_40_reg_545;
    sc_signal< sc_lv<64> > tmp_179_i_fu_433_p1;
    sc_signal< sc_lv<64> > tmp_179_i_reg_551;
    sc_signal< sc_lv<4> > buf_addr_reg_561;
    sc_signal< sc_lv<4> > buf_addr_29_reg_566;
    sc_signal< sc_lv<4> > buf_addr_30_reg_571;
    sc_signal< sc_lv<4> > buf_addr_31_reg_576;
    sc_signal< sc_lv<4> > buf_addr_32_reg_581;
    sc_signal< sc_lv<4> > buf_addr_33_reg_586;
    sc_signal< sc_lv<4> > buf_addr_34_reg_591;
    sc_signal< sc_lv<4> > buf_addr_35_reg_596;
    sc_signal< sc_lv<4> > buf_addr_36_reg_601;
    sc_signal< sc_lv<4> > buf_addr_37_reg_606;
    sc_signal< sc_lv<4> > buf_addr_38_reg_611;
    sc_signal< sc_lv<4> > buf_addr_39_reg_616;
    sc_signal< sc_lv<5> > i_26_fu_445_p2;
    sc_signal< sc_lv<5> > i_26_reg_621;
    sc_signal< sc_lv<1> > ap_CS_fsm_state15;
    sc_signal< sc_lv<4> > buf_addr_41_reg_629;
    sc_signal< sc_lv<1> > tmp_i6_fu_455_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state16;
    sc_signal< sc_lv<1> > tmp_103_fu_482_p1;
    sc_signal< sc_lv<1> > tmp_103_reg_650;
    sc_signal< sc_lv<1> > ap_CS_fsm_state18;
    sc_signal< sc_lv<1> > tmp_fu_476_p2;
    sc_signal< sc_lv<5> > i_29_fu_495_p2;
    sc_signal< sc_lv<5> > i_29_reg_659;
    sc_signal< sc_lv<1> > ap_CS_fsm_state37;
    sc_signal< sc_lv<4> > buf_addr_42_reg_667;
    sc_signal< sc_lv<1> > tmp_i1_fu_505_p2;
    sc_signal< sc_lv<4> > phitmp_fu_516_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state38;
    sc_signal< sc_logic > grp_aes_expandDecKey_fu_325_ap_start;
    sc_signal< sc_logic > grp_aes_expandDecKey_fu_325_ap_done;
    sc_signal< sc_logic > grp_aes_expandDecKey_fu_325_ap_idle;
    sc_signal< sc_logic > grp_aes_expandDecKey_fu_325_ap_ready;
    sc_signal< sc_lv<5> > grp_aes_expandDecKey_fu_325_ctx_key_address0;
    sc_signal< sc_logic > grp_aes_expandDecKey_fu_325_ctx_key_ce0;
    sc_signal< sc_logic > grp_aes_expandDecKey_fu_325_ctx_key_we0;
    sc_signal< sc_lv<8> > grp_aes_expandDecKey_fu_325_ctx_key_d0;
    sc_signal< sc_lv<5> > grp_aes_expandDecKey_fu_325_ctx_key_address1;
    sc_signal< sc_logic > grp_aes_expandDecKey_fu_325_ctx_key_ce1;
    sc_signal< sc_logic > grp_aes_expandDecKey_fu_325_ctx_key_we1;
    sc_signal< sc_lv<8> > grp_aes_expandDecKey_fu_325_ctx_key_d1;
    sc_signal< sc_lv<8> > grp_aes_expandDecKey_fu_325_ap_return;
    sc_signal< sc_logic > grp_aes_mixColumns_inv_fu_334_ap_start;
    sc_signal< sc_logic > grp_aes_mixColumns_inv_fu_334_ap_done;
    sc_signal< sc_logic > grp_aes_mixColumns_inv_fu_334_ap_idle;
    sc_signal< sc_logic > grp_aes_mixColumns_inv_fu_334_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_mixColumns_inv_fu_334_buf_r_address0;
    sc_signal< sc_logic > grp_aes_mixColumns_inv_fu_334_buf_r_ce0;
    sc_signal< sc_logic > grp_aes_mixColumns_inv_fu_334_buf_r_we0;
    sc_signal< sc_lv<8> > grp_aes_mixColumns_inv_fu_334_buf_r_d0;
    sc_signal< sc_lv<4> > grp_aes_mixColumns_inv_fu_334_buf_r_address1;
    sc_signal< sc_logic > grp_aes_mixColumns_inv_fu_334_buf_r_ce1;
    sc_signal< sc_logic > grp_aes_mixColumns_inv_fu_334_buf_r_we1;
    sc_signal< sc_lv<8> > grp_aes_mixColumns_inv_fu_334_buf_r_d1;
    sc_signal< sc_logic > grp_aes_addRoundKey_fu_340_ap_start;
    sc_signal< sc_logic > grp_aes_addRoundKey_fu_340_ap_done;
    sc_signal< sc_logic > grp_aes_addRoundKey_fu_340_ap_idle;
    sc_signal< sc_logic > grp_aes_addRoundKey_fu_340_ap_ready;
    sc_signal< sc_lv<4> > grp_aes_addRoundKey_fu_340_buf_r_address0;
    sc_signal< sc_logic > grp_aes_addRoundKey_fu_340_buf_r_ce0;
    sc_signal< sc_logic > grp_aes_addRoundKey_fu_340_buf_r_we0;
    sc_signal< sc_lv<8> > grp_aes_addRoundKey_fu_340_buf_r_d0;
    sc_signal< sc_lv<5> > grp_aes_addRoundKey_fu_340_key_address0;
    sc_signal< sc_logic > grp_aes_addRoundKey_fu_340_key_ce0;
    sc_signal< sc_lv<6> > grp_aes_addRoundKey_fu_340_key_offset;
    sc_signal< sc_lv<5> > i_i_reg_280;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > i_i5_reg_291;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_lv<1> > ap_CS_fsm_state17;
    sc_signal< sc_lv<4> > i_reg_302;
    sc_signal< sc_lv<5> > i_i3_reg_314;
    sc_signal< sc_lv<1> > ap_CS_fsm_state36;
    sc_signal< sc_lv<1> > ap_CS_fsm_state39;
    sc_signal< sc_logic > ap_reg_grp_aes_expandDecKey_fu_325_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_reg_grp_aes_mixColumns_inv_fu_334_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state23;
    sc_signal< sc_lv<1> > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_reg_grp_aes_addRoundKey_fu_340_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state21;
    sc_signal< sc_lv<1> > ap_CS_fsm_state19;
    sc_signal< sc_lv<1> > ap_CS_fsm_state40;
    sc_signal< sc_lv<1> > ap_CS_fsm_state22;
    sc_signal< sc_lv<64> > tmp_3_i_fu_461_p1;
    sc_signal< sc_lv<64> > tmp_4_i_fu_471_p1;
    sc_signal< sc_lv<64> > tmp_3_i1_fu_511_p1;
    sc_signal< sc_lv<64> > tmp_4_i1_fu_522_p1;
    sc_signal< sc_lv<8> > rcon_fu_68;
    sc_signal< sc_lv<8> > tmp_176_i_fu_438_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > ap_CS_fsm_state12;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > ap_CS_fsm_state25;
    sc_signal< sc_lv<1> > ap_CS_fsm_state32;
    sc_signal< sc_lv<1> > ap_CS_fsm_state33;
    sc_signal< sc_lv<1> > ap_CS_fsm_state34;
    sc_signal< sc_lv<1> > ap_CS_fsm_state35;
    sc_signal< sc_lv<8> > i_25_cast_fu_411_p1;
    sc_signal< sc_lv<5> > tmp_178_i_fu_427_p2;
    sc_signal< sc_lv<8> > i_28_cast_fu_451_p1;
    sc_signal< sc_lv<8> > i_31_cast_fu_501_p1;
    sc_signal< sc_lv<40> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<40> ap_ST_fsm_state1;
    static const sc_lv<40> ap_ST_fsm_state2;
    static const sc_lv<40> ap_ST_fsm_state3;
    static const sc_lv<40> ap_ST_fsm_state4;
    static const sc_lv<40> ap_ST_fsm_state5;
    static const sc_lv<40> ap_ST_fsm_state6;
    static const sc_lv<40> ap_ST_fsm_state7;
    static const sc_lv<40> ap_ST_fsm_state8;
    static const sc_lv<40> ap_ST_fsm_state9;
    static const sc_lv<40> ap_ST_fsm_state10;
    static const sc_lv<40> ap_ST_fsm_state11;
    static const sc_lv<40> ap_ST_fsm_state12;
    static const sc_lv<40> ap_ST_fsm_state13;
    static const sc_lv<40> ap_ST_fsm_state14;
    static const sc_lv<40> ap_ST_fsm_state15;
    static const sc_lv<40> ap_ST_fsm_state16;
    static const sc_lv<40> ap_ST_fsm_state17;
    static const sc_lv<40> ap_ST_fsm_state18;
    static const sc_lv<40> ap_ST_fsm_state19;
    static const sc_lv<40> ap_ST_fsm_state20;
    static const sc_lv<40> ap_ST_fsm_state21;
    static const sc_lv<40> ap_ST_fsm_state22;
    static const sc_lv<40> ap_ST_fsm_state23;
    static const sc_lv<40> ap_ST_fsm_state24;
    static const sc_lv<40> ap_ST_fsm_state25;
    static const sc_lv<40> ap_ST_fsm_state26;
    static const sc_lv<40> ap_ST_fsm_state27;
    static const sc_lv<40> ap_ST_fsm_state28;
    static const sc_lv<40> ap_ST_fsm_state29;
    static const sc_lv<40> ap_ST_fsm_state30;
    static const sc_lv<40> ap_ST_fsm_state31;
    static const sc_lv<40> ap_ST_fsm_state32;
    static const sc_lv<40> ap_ST_fsm_state33;
    static const sc_lv<40> ap_ST_fsm_state34;
    static const sc_lv<40> ap_ST_fsm_state35;
    static const sc_lv<40> ap_ST_fsm_state36;
    static const sc_lv<40> ap_ST_fsm_state37;
    static const sc_lv<40> ap_ST_fsm_state38;
    static const sc_lv<40> ap_ST_fsm_state39;
    static const sc_lv<40> ap_ST_fsm_state40;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_24;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<4> ap_const_lv4_D;
    static const sc_lv<32> ap_const_lv32_23;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_10;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_21;
    static const sc_lv<32> ap_const_lv32_22;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    // Thread declarations
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
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state33();
    void thread_ap_CS_fsm_state34();
    void thread_ap_CS_fsm_state35();
    void thread_ap_CS_fsm_state36();
    void thread_ap_CS_fsm_state37();
    void thread_ap_CS_fsm_state38();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state40();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_buf_addr_29_reg_566();
    void thread_buf_addr_30_reg_571();
    void thread_buf_addr_31_reg_576();
    void thread_buf_addr_32_reg_581();
    void thread_buf_addr_33_reg_586();
    void thread_buf_addr_34_reg_591();
    void thread_buf_addr_35_reg_596();
    void thread_buf_addr_36_reg_601();
    void thread_buf_addr_37_reg_606();
    void thread_buf_addr_38_reg_611();
    void thread_buf_addr_39_reg_616();
    void thread_buf_addr_reg_561();
    void thread_buf_r_address0();
    void thread_buf_r_address1();
    void thread_buf_r_ce0();
    void thread_buf_r_ce1();
    void thread_buf_r_d0();
    void thread_buf_r_d1();
    void thread_buf_r_we0();
    void thread_buf_r_we1();
    void thread_ctx_deckey_address0();
    void thread_ctx_deckey_address1();
    void thread_ctx_deckey_ce0();
    void thread_ctx_deckey_ce1();
    void thread_ctx_key_address0();
    void thread_ctx_key_address1();
    void thread_ctx_key_ce0();
    void thread_ctx_key_ce1();
    void thread_ctx_key_d0();
    void thread_ctx_key_d1();
    void thread_ctx_key_we0();
    void thread_ctx_key_we1();
    void thread_grp_aes_addRoundKey_fu_340_ap_start();
    void thread_grp_aes_addRoundKey_fu_340_key_offset();
    void thread_grp_aes_expandDecKey_fu_325_ap_start();
    void thread_grp_aes_mixColumns_inv_fu_334_ap_start();
    void thread_i_23_fu_405_p2();
    void thread_i_25_cast_fu_411_p1();
    void thread_i_26_fu_445_p2();
    void thread_i_28_cast_fu_451_p1();
    void thread_i_29_fu_495_p2();
    void thread_i_31_cast_fu_501_p1();
    void thread_phitmp_fu_516_p2();
    void thread_sboxinv_address0();
    void thread_sboxinv_ce0();
    void thread_tmp_103_fu_482_p1();
    void thread_tmp_176_i_fu_438_p2();
    void thread_tmp_178_i_fu_427_p2();
    void thread_tmp_179_i_fu_433_p1();
    void thread_tmp_3_i1_fu_511_p1();
    void thread_tmp_3_i_fu_461_p1();
    void thread_tmp_4_i1_fu_522_p1();
    void thread_tmp_4_i_fu_471_p1();
    void thread_tmp_fu_476_p2();
    void thread_tmp_i1_fu_505_p2();
    void thread_tmp_i6_fu_455_p2();
    void thread_tmp_i_38_fu_421_p1();
    void thread_tmp_i_fu_415_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
