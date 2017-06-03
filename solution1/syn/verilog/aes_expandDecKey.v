// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_expandDecKey (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        rc_read,
        ctx_key_address0,
        ctx_key_ce0,
        ctx_key_we0,
        ctx_key_d0,
        ctx_key_q0,
        ctx_key_address1,
        ctx_key_ce1,
        ctx_key_we1,
        ctx_key_d1,
        ctx_key_q1,
        ap_return
);

parameter    ap_ST_fsm_state1 = 23'b1;
parameter    ap_ST_fsm_state2 = 23'b10;
parameter    ap_ST_fsm_state3 = 23'b100;
parameter    ap_ST_fsm_state4 = 23'b1000;
parameter    ap_ST_fsm_state5 = 23'b10000;
parameter    ap_ST_fsm_state6 = 23'b100000;
parameter    ap_ST_fsm_state7 = 23'b1000000;
parameter    ap_ST_fsm_state8 = 23'b10000000;
parameter    ap_ST_fsm_state9 = 23'b100000000;
parameter    ap_ST_fsm_state10 = 23'b1000000000;
parameter    ap_ST_fsm_state11 = 23'b10000000000;
parameter    ap_ST_fsm_state12 = 23'b100000000000;
parameter    ap_ST_fsm_state13 = 23'b1000000000000;
parameter    ap_ST_fsm_state14 = 23'b10000000000000;
parameter    ap_ST_fsm_state15 = 23'b100000000000000;
parameter    ap_ST_fsm_state16 = 23'b1000000000000000;
parameter    ap_ST_fsm_state17 = 23'b10000000000000000;
parameter    ap_ST_fsm_state18 = 23'b100000000000000000;
parameter    ap_ST_fsm_state19 = 23'b1000000000000000000;
parameter    ap_ST_fsm_state20 = 23'b10000000000000000000;
parameter    ap_ST_fsm_state21 = 23'b100000000000000000000;
parameter    ap_ST_fsm_state22 = 23'b1000000000000000000000;
parameter    ap_ST_fsm_state23 = 23'b10000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_12 = 32'b10010;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_15 = 32'b10101;
parameter    ap_const_lv32_14 = 32'b10100;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv5_1C = 5'b11100;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv4_C = 4'b1100;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv5_C = 5'b1100;
parameter    ap_const_lv5_D = 5'b1101;
parameter    ap_const_lv5_E = 5'b1110;
parameter    ap_const_lv5_F = 5'b1111;
parameter    ap_const_lv5_10 = 5'b10000;
parameter    ap_const_lv5_11 = 5'b10001;
parameter    ap_const_lv5_12 = 5'b10010;
parameter    ap_const_lv5_13 = 5'b10011;
parameter    ap_const_lv5_1D = 5'b11101;
parameter    ap_const_lv5_1E = 5'b11110;
parameter    ap_const_lv5_1F = 5'b11111;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv5_2 = 5'b10;
parameter    ap_const_lv5_3 = 5'b11;
parameter    ap_const_lv32_16 = 32'b10110;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv4_2 = 4'b10;
parameter    ap_const_lv4_F = 4'b1111;
parameter    ap_const_lv4_3 = 4'b11;
parameter    ap_const_lv8_8D = 8'b10001101;
parameter    ap_const_lv8_0 = 8'b00000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] rc_read;
output  [4:0] ctx_key_address0;
output   ctx_key_ce0;
output   ctx_key_we0;
output  [7:0] ctx_key_d0;
input  [7:0] ctx_key_q0;
output  [4:0] ctx_key_address1;
output   ctx_key_ce1;
output   ctx_key_we1;
output  [7:0] ctx_key_d1;
input  [7:0] ctx_key_q1;
output  [7:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] ctx_key_address0;
reg ctx_key_ce0;
reg ctx_key_we0;
reg[7:0] ctx_key_d0;
reg[4:0] ctx_key_address1;
reg ctx_key_ce1;
reg ctx_key_we1;
reg[7:0] ctx_key_d1;

(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg   [7:0] sbox_address0;
reg    sbox_ce0;
wire   [7:0] sbox_q0;
reg   [7:0] sbox_address1;
reg    sbox_ce1;
wire   [7:0] sbox_q1;
wire   [7:0] grp_fu_336_p2;
reg   [7:0] reg_354;
wire   [0:0] ap_CS_fsm_state3;
wire   [0:0] ap_CS_fsm_state6;
wire   [0:0] ap_CS_fsm_state14;
wire   [0:0] ap_CS_fsm_state17;
reg   [7:0] reg_360;
wire   [0:0] ap_CS_fsm_state4;
wire   [0:0] ap_CS_fsm_state15;
reg   [7:0] reg_365;
wire   [0:0] ap_CS_fsm_state5;
wire   [0:0] ap_CS_fsm_state16;
reg   [7:0] reg_370;
wire   [0:0] ap_CS_fsm_state8;
wire   [0:0] ap_CS_fsm_state9;
wire   [0:0] ap_CS_fsm_state19;
wire   [0:0] ap_CS_fsm_state20;
reg   [7:0] reg_374;
wire   [7:0] grp_fu_342_p2;
reg   [7:0] reg_378;
wire   [0:0] ap_CS_fsm_state10;
wire   [0:0] ap_CS_fsm_state11;
wire   [0:0] ap_CS_fsm_state22;
wire   [7:0] grp_fu_348_p2;
reg   [7:0] reg_383;
wire   [0:0] ap_CS_fsm_state21;
wire   [4:0] i_4_fu_394_p2;
reg   [4:0] i_4_reg_663;
wire   [0:0] ap_CS_fsm_state2;
wire   [0:0] tmp_fu_388_p2;
reg   [4:0] ctx_key_addr_1_reg_673;
reg   [4:0] ctx_key_addr_3_reg_684;
reg   [4:0] ctx_key_addr_5_reg_694;
reg   [4:0] ctx_key_addr_7_reg_705;
wire   [4:0] tmp_123_cast_fu_502_p1;
reg   [4:0] tmp_123_cast_reg_733;
wire   [0:0] ap_CS_fsm_state13;
wire   [0:0] tmp_88_fu_496_p2;
reg   [4:0] ctx_key_addr_9_reg_744;
reg   [4:0] ctx_key_addr_11_reg_755;
reg   [4:0] ctx_key_addr_13_reg_765;
reg   [4:0] ctx_key_addr_15_reg_776;
wire   [3:0] i_5_fu_586_p2;
reg   [3:0] i_5_reg_781;
wire   [7:0] rc_write_assign_fu_626_p2;
reg   [7:0] rc_write_assign_reg_796;
wire   [7:0] tmp_94_fu_638_p2;
reg   [7:0] tmp_94_reg_800;
reg   [4:0] i_reg_312;
wire   [0:0] ap_CS_fsm_state7;
reg   [3:0] i_1_reg_324;
wire   [0:0] ap_CS_fsm_state12;
wire   [0:0] ap_CS_fsm_state18;
wire   [63:0] tmp_63_fu_400_p1;
wire   [63:0] tmp_64_fu_405_p1;
wire   [63:0] tmp_67_fu_416_p1;
wire   [63:0] tmp_69_fu_427_p1;
wire   [63:0] tmp_72_fu_438_p1;
wire   [63:0] tmp_74_fu_449_p1;
wire   [63:0] tmp_77_fu_460_p1;
wire   [63:0] tmp_79_fu_471_p1;
wire   [63:0] tmp_s_fu_476_p1;
wire   [63:0] tmp_82_fu_481_p1;
wire   [63:0] tmp_84_fu_486_p1;
wire   [63:0] tmp_86_fu_491_p1;
wire  signed [63:0] tmp_102_fu_512_p1;
wire   [63:0] tmp_103_fu_517_p1;
wire  signed [63:0] tmp_106_fu_527_p1;
wire   [63:0] tmp_108_fu_538_p1;
wire  signed [63:0] tmp_111_fu_548_p1;
wire   [63:0] tmp_113_fu_559_p1;
wire   [63:0] tmp_116_fu_570_p1;
wire   [63:0] tmp_118_fu_581_p1;
wire   [63:0] tmp_93_fu_592_p1;
wire   [63:0] tmp_95_fu_597_p1;
wire   [63:0] tmp_97_fu_644_p1;
wire   [63:0] tmp_99_fu_649_p1;
wire   [0:0] ap_CS_fsm_state23;
wire   [4:0] tmp_66_fu_410_p2;
wire   [4:0] tmp_68_fu_421_p2;
wire   [4:0] tmp_71_fu_432_p2;
wire   [4:0] tmp_73_fu_443_p2;
wire   [4:0] tmp_76_fu_454_p2;
wire   [4:0] tmp_78_fu_465_p2;
wire   [4:0] tmp_101_fu_506_p2;
wire   [4:0] tmp_105_fu_522_p2;
wire   [3:0] tmp_107_fu_532_p2;
wire   [4:0] tmp_110_fu_543_p2;
wire   [3:0] tmp_112_fu_553_p2;
wire   [3:0] tmp_115_fu_564_p2;
wire   [3:0] tmp_117_fu_575_p2;
wire   [6:0] tmp_89_fu_602_p4;
wire   [0:0] tmp_91_fu_615_p1;
wire   [7:0] tmp_92_fu_618_p3;
wire   [7:0] tmp_90_fu_611_p1;
wire   [7:0] tmp1_fu_632_p2;
reg   [22:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 23'b1;
end

aes_expandDecKey_bkb #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
sbox_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sbox_address0),
    .ce0(sbox_ce0),
    .q0(sbox_q0),
    .address1(sbox_address1),
    .ce1(sbox_ce1),
    .q1(sbox_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        i_1_reg_324 <= i_5_reg_781;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        i_1_reg_324 <= ap_const_lv4_C;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_reg_312 <= i_4_reg_663;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        i_reg_312 <= ap_const_lv5_1C;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        ctx_key_addr_11_reg_755[3 : 1] <= tmp_108_fu_538_p1[3 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        ctx_key_addr_13_reg_765[0] <= tmp_113_fu_559_p1[0];
ctx_key_addr_13_reg_765[3 : 2] <= tmp_113_fu_559_p1[3 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        ctx_key_addr_15_reg_776[3 : 2] <= tmp_118_fu_581_p1[3 : 2];
        i_5_reg_781 <= i_5_fu_586_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & ~(tmp_fu_388_p2 == 1'b0))) begin
        ctx_key_addr_1_reg_673 <= tmp_64_fu_405_p1;
        i_4_reg_663 <= i_4_fu_394_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_key_addr_3_reg_684[4 : 1] <= tmp_69_fu_427_p1[4 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ctx_key_addr_5_reg_694[0] <= tmp_74_fu_449_p1[0];
ctx_key_addr_5_reg_694[4 : 2] <= tmp_74_fu_449_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ctx_key_addr_7_reg_705[4 : 2] <= tmp_79_fu_471_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (1'b0 == tmp_88_fu_496_p2))) begin
        ctx_key_addr_9_reg_744[3 : 0] <= tmp_103_fu_517_p1[3 : 0];
        tmp_123_cast_reg_733[3 : 0] <= tmp_123_cast_fu_502_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        rc_write_assign_reg_796 <= rc_write_assign_fu_626_p2;
        tmp_94_reg_800 <= tmp_94_fu_638_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state17))) begin
        reg_354 <= grp_fu_336_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_360 <= grp_fu_336_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_365 <= grp_fu_336_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_370 <= ctx_key_q0;
        reg_374 <= ctx_key_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_378 <= grp_fu_342_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21))) begin
        reg_383 <= grp_fu_348_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | (1'b1 == ap_CS_fsm_state23))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state23))) begin
        ctx_key_address0 = ap_const_lv5_2;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state22))) begin
        ctx_key_address0 = ap_const_lv5_0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        ctx_key_address0 = ap_const_lv5_1F;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        ctx_key_address0 = ctx_key_addr_13_reg_765;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        ctx_key_address0 = ctx_key_addr_9_reg_744;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        ctx_key_address0 = tmp_116_fu_570_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        ctx_key_address0 = tmp_111_fu_548_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        ctx_key_address0 = tmp_106_fu_527_p1;
    end else if (((1'b1 == ap_CS_fsm_state13) & ~(1'b0 == tmp_88_fu_496_p2))) begin
        ctx_key_address0 = ap_const_lv5_1D;
    end else if (((1'b1 == ap_CS_fsm_state13) & (1'b0 == tmp_88_fu_496_p2))) begin
        ctx_key_address0 = tmp_102_fu_512_p1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12))) begin
        ctx_key_address0 = ap_const_lv5_12;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11))) begin
        ctx_key_address0 = ap_const_lv5_10;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ctx_key_address0 = ap_const_lv5_E;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_key_address0 = ctx_key_addr_5_reg_694;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_key_address0 = ctx_key_addr_1_reg_673;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        ctx_key_address0 = tmp_77_fu_460_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ctx_key_address0 = tmp_72_fu_438_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_key_address0 = tmp_67_fu_416_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_388_p2 == 1'b0))) begin
        ctx_key_address0 = ap_const_lv5_C;
    end else if (((1'b1 == ap_CS_fsm_state2) & ~(tmp_fu_388_p2 == 1'b0))) begin
        ctx_key_address0 = tmp_63_fu_400_p1;
    end else begin
        ctx_key_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state23))) begin
        ctx_key_address1 = ap_const_lv5_3;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state22))) begin
        ctx_key_address1 = ap_const_lv5_1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        ctx_key_address1 = ap_const_lv5_1C;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        ctx_key_address1 = ctx_key_addr_15_reg_776;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        ctx_key_address1 = ctx_key_addr_11_reg_755;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        ctx_key_address1 = tmp_118_fu_581_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        ctx_key_address1 = tmp_113_fu_559_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        ctx_key_address1 = tmp_108_fu_538_p1;
    end else if (((1'b1 == ap_CS_fsm_state13) & ~(1'b0 == tmp_88_fu_496_p2))) begin
        ctx_key_address1 = ap_const_lv5_1E;
    end else if (((1'b1 == ap_CS_fsm_state13) & (1'b0 == tmp_88_fu_496_p2))) begin
        ctx_key_address1 = tmp_103_fu_517_p1;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12))) begin
        ctx_key_address1 = ap_const_lv5_13;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11))) begin
        ctx_key_address1 = ap_const_lv5_11;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        ctx_key_address1 = ap_const_lv5_F;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        ctx_key_address1 = ctx_key_addr_7_reg_705;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_key_address1 = ctx_key_addr_3_reg_684;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        ctx_key_address1 = tmp_79_fu_471_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        ctx_key_address1 = tmp_74_fu_449_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_key_address1 = tmp_69_fu_427_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_388_p2 == 1'b0))) begin
        ctx_key_address1 = ap_const_lv5_D;
    end else if (((1'b1 == ap_CS_fsm_state2) & ~(tmp_fu_388_p2 == 1'b0))) begin
        ctx_key_address1 = tmp_64_fu_405_p1;
    end else begin
        ctx_key_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | ((1'b1 == ap_CS_fsm_state2) & ~(tmp_fu_388_p2 == 1'b0)) | ((1'b1 == ap_CS_fsm_state13) & (1'b0 == tmp_88_fu_496_p2)) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state2) & (tmp_fu_388_p2 == 1'b0)) | ((1'b1 == ap_CS_fsm_state13) & ~(1'b0 == tmp_88_fu_496_p2)) | (1'b1 == ap_CS_fsm_state23))) begin
        ctx_key_ce0 = 1'b1;
    end else begin
        ctx_key_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | ((1'b1 == ap_CS_fsm_state2) & ~(tmp_fu_388_p2 == 1'b0)) | ((1'b1 == ap_CS_fsm_state13) & (1'b0 == tmp_88_fu_496_p2)) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state2) & (tmp_fu_388_p2 == 1'b0)) | ((1'b1 == ap_CS_fsm_state13) & ~(1'b0 == tmp_88_fu_496_p2)) | (1'b1 == ap_CS_fsm_state23))) begin
        ctx_key_ce1 = 1'b1;
    end else begin
        ctx_key_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        ctx_key_d0 = tmp_94_reg_800;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state23))) begin
        ctx_key_d0 = reg_378;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state18))) begin
        ctx_key_d0 = reg_365;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17))) begin
        ctx_key_d0 = reg_354;
    end else begin
        ctx_key_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state23))) begin
        ctx_key_d1 = reg_383;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state18))) begin
        ctx_key_d1 = reg_354;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17))) begin
        ctx_key_d1 = reg_360;
    end else begin
        ctx_key_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state23))) begin
        ctx_key_we0 = 1'b1;
    end else begin
        ctx_key_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state23))) begin
        ctx_key_we1 = 1'b1;
    end else begin
        ctx_key_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        sbox_address0 = tmp_97_fu_644_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        sbox_address0 = tmp_93_fu_592_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sbox_address0 = tmp_84_fu_486_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sbox_address0 = tmp_s_fu_476_p1;
    end else begin
        sbox_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        sbox_address1 = tmp_99_fu_649_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        sbox_address1 = tmp_95_fu_597_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        sbox_address1 = tmp_86_fu_491_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sbox_address1 = tmp_82_fu_481_p1;
    end else begin
        sbox_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state21))) begin
        sbox_ce0 = 1'b1;
    end else begin
        sbox_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state21))) begin
        sbox_ce1 = 1'b1;
    end else begin
        sbox_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((tmp_fu_388_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (~(1'b0 == tmp_88_fu_496_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state10 = ap_CS_fsm[ap_const_lv32_9];

assign ap_CS_fsm_state11 = ap_CS_fsm[ap_const_lv32_A];

assign ap_CS_fsm_state12 = ap_CS_fsm[ap_const_lv32_B];

assign ap_CS_fsm_state13 = ap_CS_fsm[ap_const_lv32_C];

assign ap_CS_fsm_state14 = ap_CS_fsm[ap_const_lv32_D];

assign ap_CS_fsm_state15 = ap_CS_fsm[ap_const_lv32_E];

assign ap_CS_fsm_state16 = ap_CS_fsm[ap_const_lv32_F];

assign ap_CS_fsm_state17 = ap_CS_fsm[ap_const_lv32_10];

assign ap_CS_fsm_state18 = ap_CS_fsm[ap_const_lv32_11];

assign ap_CS_fsm_state19 = ap_CS_fsm[ap_const_lv32_12];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state20 = ap_CS_fsm[ap_const_lv32_13];

assign ap_CS_fsm_state21 = ap_CS_fsm[ap_const_lv32_14];

assign ap_CS_fsm_state22 = ap_CS_fsm[ap_const_lv32_15];

assign ap_CS_fsm_state23 = ap_CS_fsm[ap_const_lv32_16];

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_3];

assign ap_CS_fsm_state5 = ap_CS_fsm[ap_const_lv32_4];

assign ap_CS_fsm_state6 = ap_CS_fsm[ap_const_lv32_5];

assign ap_CS_fsm_state7 = ap_CS_fsm[ap_const_lv32_6];

assign ap_CS_fsm_state8 = ap_CS_fsm[ap_const_lv32_7];

assign ap_CS_fsm_state9 = ap_CS_fsm[ap_const_lv32_8];

assign ap_return = rc_write_assign_reg_796;

assign grp_fu_336_p2 = (ctx_key_q1 ^ ctx_key_q0);

assign grp_fu_342_p2 = (ctx_key_q0 ^ sbox_q0);

assign grp_fu_348_p2 = (ctx_key_q1 ^ sbox_q1);

assign i_4_fu_394_p2 = ($signed(i_reg_312) + $signed(ap_const_lv5_1C));

assign i_5_fu_586_p2 = ($signed(i_1_reg_324) + $signed(ap_const_lv4_C));

assign rc_write_assign_fu_626_p2 = (tmp_92_fu_618_p3 ^ tmp_90_fu_611_p1);

assign tmp1_fu_632_p2 = (ctx_key_q0 ^ rc_write_assign_fu_626_p2);

assign tmp_101_fu_506_p2 = ($signed(tmp_123_cast_fu_502_p1) + $signed(ap_const_lv5_1C));

assign tmp_102_fu_512_p1 = $signed(tmp_101_fu_506_p2);

assign tmp_103_fu_517_p1 = i_1_reg_324;

assign tmp_105_fu_522_p2 = (tmp_123_cast_reg_733 + ap_const_lv5_1D);

assign tmp_106_fu_527_p1 = $signed(tmp_105_fu_522_p2);

assign tmp_107_fu_532_p2 = (i_1_reg_324 | ap_const_lv4_1);

assign tmp_108_fu_538_p1 = tmp_107_fu_532_p2;

assign tmp_110_fu_543_p2 = (tmp_123_cast_reg_733 + ap_const_lv5_1E);

assign tmp_111_fu_548_p1 = $signed(tmp_110_fu_543_p2);

assign tmp_112_fu_553_p2 = (i_1_reg_324 | ap_const_lv4_2);

assign tmp_113_fu_559_p1 = tmp_112_fu_553_p2;

assign tmp_115_fu_564_p2 = ($signed(i_1_reg_324) + $signed(ap_const_lv4_F));

assign tmp_116_fu_570_p1 = tmp_115_fu_564_p2;

assign tmp_117_fu_575_p2 = (i_1_reg_324 | ap_const_lv4_3);

assign tmp_118_fu_581_p1 = tmp_117_fu_575_p2;

assign tmp_123_cast_fu_502_p1 = i_1_reg_324;

assign tmp_63_fu_400_p1 = i_4_fu_394_p2;

assign tmp_64_fu_405_p1 = i_reg_312;

assign tmp_66_fu_410_p2 = (i_reg_312 + ap_const_lv5_1D);

assign tmp_67_fu_416_p1 = tmp_66_fu_410_p2;

assign tmp_68_fu_421_p2 = (i_reg_312 | ap_const_lv5_1);

assign tmp_69_fu_427_p1 = tmp_68_fu_421_p2;

assign tmp_71_fu_432_p2 = (i_reg_312 + ap_const_lv5_1E);

assign tmp_72_fu_438_p1 = tmp_71_fu_432_p2;

assign tmp_73_fu_443_p2 = (i_reg_312 | ap_const_lv5_2);

assign tmp_74_fu_449_p1 = tmp_73_fu_443_p2;

assign tmp_76_fu_454_p2 = (i_reg_312 + ap_const_lv5_1F);

assign tmp_77_fu_460_p1 = tmp_76_fu_454_p2;

assign tmp_78_fu_465_p2 = (i_reg_312 | ap_const_lv5_3);

assign tmp_79_fu_471_p1 = tmp_78_fu_465_p2;

assign tmp_82_fu_481_p1 = reg_374;

assign tmp_84_fu_486_p1 = reg_370;

assign tmp_86_fu_491_p1 = reg_374;

assign tmp_88_fu_496_p2 = ((i_1_reg_324 == ap_const_lv4_0) ? 1'b1 : 1'b0);

assign tmp_89_fu_602_p4 = {{rc_read[ap_const_lv32_7 : ap_const_lv32_1]}};

assign tmp_90_fu_611_p1 = tmp_89_fu_602_p4;

assign tmp_91_fu_615_p1 = rc_read[0:0];

assign tmp_92_fu_618_p3 = ((tmp_91_fu_615_p1[0:0] === 1'b1) ? ap_const_lv8_8D : ap_const_lv8_0);

assign tmp_93_fu_592_p1 = reg_370;

assign tmp_94_fu_638_p2 = (tmp1_fu_632_p2 ^ sbox_q0);

assign tmp_95_fu_597_p1 = reg_374;

assign tmp_97_fu_644_p1 = reg_370;

assign tmp_99_fu_649_p1 = reg_374;

assign tmp_fu_388_p2 = ((i_reg_312 > ap_const_lv5_10) ? 1'b1 : 1'b0);

assign tmp_s_fu_476_p1 = reg_370;

always @ (posedge ap_clk) begin
    ctx_key_addr_3_reg_684[0] <= 1'b1;
    ctx_key_addr_5_reg_694[1] <= 1'b1;
    ctx_key_addr_7_reg_705[1:0] <= 2'b11;
    tmp_123_cast_reg_733[4] <= 1'b0;
    ctx_key_addr_9_reg_744[4] <= 1'b0;
    ctx_key_addr_11_reg_755[0] <= 1'b1;
    ctx_key_addr_11_reg_755[4] <= 1'b0;
    ctx_key_addr_13_reg_765[1] <= 1'b1;
    ctx_key_addr_13_reg_765[4] <= 1'b0;
    ctx_key_addr_15_reg_776[1:0] <= 2'b11;
    ctx_key_addr_15_reg_776[4] <= 1'b0;
end

endmodule //aes_expandDecKey
