// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _aes_addRoundKey_HH_
#define _aes_addRoundKey_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct aes_addRoundKey : public sc_module {
    // Port declarations 15
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
    sc_out< sc_lv<5> > key_address0;
    sc_out< sc_logic > key_ce0;
    sc_in< sc_lv<8> > key_q0;
    sc_in< sc_lv<6> > key_offset;


    // Module declarations
    aes_addRoundKey(sc_module_name name);
    SC_HAS_PROCESS(aes_addRoundKey);

    ~aes_addRoundKey();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > tmp_38_fu_61_p1;
    sc_signal< sc_lv<5> > tmp_38_reg_103;
    sc_signal< sc_lv<5> > i_50_fu_65_p2;
    sc_signal< sc_lv<5> > i_50_reg_108;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_fu_75_p2;
    sc_signal< sc_lv<4> > buf_addr_reg_121;
    sc_signal< sc_lv<5> > i_reg_50;
    sc_signal< sc_lv<1> > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > sum_cast_fu_91_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_81_p1;
    sc_signal< sc_lv<8> > i_53_cast_fu_71_p1;
    sc_signal< sc_lv<5> > sum_fu_86_p2;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_state2;
    static const sc_lv<3> ap_ST_fsm_state3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<5> ap_const_lv5_10;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<5> ap_const_lv5_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_buf_r_address0();
    void thread_buf_r_ce0();
    void thread_buf_r_d0();
    void thread_buf_r_we0();
    void thread_i_50_fu_65_p2();
    void thread_i_53_cast_fu_71_p1();
    void thread_key_address0();
    void thread_key_ce0();
    void thread_sum_cast_fu_91_p1();
    void thread_sum_fu_86_p2();
    void thread_tmp_38_fu_61_p1();
    void thread_tmp_fu_75_p2();
    void thread_tmp_s_fu_81_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
