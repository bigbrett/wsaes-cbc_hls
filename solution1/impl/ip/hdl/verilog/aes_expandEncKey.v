// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aes_expandEncKey (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        k_address0,
        k_ce0,
        k_we0,
        k_d0,
        k_q0,
        k_address1,
        k_ce1,
        k_we1,
        k_d1,
        k_q1,
        rc_read,
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
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_12 = 32'b10010;
parameter    ap_const_lv32_15 = 32'b10101;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_14 = 32'b10100;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv5_4 = 5'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv6_14 = 6'b10100;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_16 = 32'b10110;
parameter    ap_const_lv64_1D = 64'b11101;
parameter    ap_const_lv64_1E = 64'b11110;
parameter    ap_const_lv64_1F = 64'b11111;
parameter    ap_const_lv64_1C = 64'b11100;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_1 = 64'b1;
parameter    ap_const_lv64_2 = 64'b10;
parameter    ap_const_lv64_3 = 64'b11;
parameter    ap_const_lv64_C = 64'b1100;
parameter    ap_const_lv64_D = 64'b1101;
parameter    ap_const_lv64_E = 64'b1110;
parameter    ap_const_lv64_F = 64'b1111;
parameter    ap_const_lv64_10 = 64'b10000;
parameter    ap_const_lv64_11 = 64'b10001;
parameter    ap_const_lv64_12 = 64'b10010;
parameter    ap_const_lv64_13 = 64'b10011;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv8_1B = 8'b11011;
parameter    ap_const_lv4_C = 4'b1100;
parameter    ap_const_lv4_D = 4'b1101;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv4_E = 4'b1110;
parameter    ap_const_lv4_2 = 4'b10;
parameter    ap_const_lv4_F = 4'b1111;
parameter    ap_const_lv4_3 = 4'b11;
parameter    ap_const_lv5_1C = 5'b11100;
parameter    ap_const_lv6_4 = 6'b100;
parameter    ap_const_lv5_1D = 5'b11101;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv5_1E = 5'b11110;
parameter    ap_const_lv5_2 = 5'b10;
parameter    ap_const_lv5_1F = 5'b11111;
parameter    ap_const_lv5_3 = 5'b11;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] k_address0;
output   k_ce0;
output   k_we0;
output  [7:0] k_d0;
input  [7:0] k_q0;
output  [4:0] k_address1;
output   k_ce1;
output   k_we1;
output  [7:0] k_d1;
input  [7:0] k_q1;
input  [7:0] rc_read;
output  [7:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] k_address0;
reg k_ce0;
reg k_we0;
reg[7:0] k_d0;
reg[4:0] k_address1;
reg k_ce1;
reg k_we1;
reg[7:0] k_d1;

(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg   [7:0] sbox_address0;
reg    sbox_ce0;
wire   [7:0] sbox_q0;
reg   [7:0] sbox_address1;
reg    sbox_ce1;
wire   [7:0] sbox_q1;
wire   [7:0] sbox_address2;
reg    sbox_ce2;
wire   [7:0] sbox_q2;
reg   [7:0] reg_491;
wire   [0:0] ap_CS_fsm_state2;
wire   [0:0] ap_CS_fsm_state4;
wire   [0:0] ap_CS_fsm_state13;
wire   [0:0] ap_CS_fsm_state14;
reg   [7:0] reg_495;
wire   [0:0] ap_CS_fsm_state3;
wire   [7:0] grp_fu_473_p2;
reg   [7:0] reg_500;
wire   [0:0] ap_CS_fsm_state8;
wire   [0:0] ap_CS_fsm_state11;
wire   [0:0] ap_CS_fsm_state19;
wire   [0:0] ap_CS_fsm_state22;
reg   [7:0] reg_506;
wire   [0:0] ap_CS_fsm_state9;
wire   [0:0] ap_CS_fsm_state20;
reg   [7:0] reg_511;
wire   [0:0] ap_CS_fsm_state10;
wire   [0:0] ap_CS_fsm_state21;
wire   [7:0] grp_fu_479_p2;
reg   [7:0] reg_516;
wire   [0:0] ap_CS_fsm_state15;
wire   [0:0] ap_CS_fsm_state16;
wire   [7:0] grp_fu_485_p2;
reg   [7:0] reg_521;
wire   [4:0] k_addr_reg_832;
wire   [4:0] k_addr_3_reg_842;
reg   [7:0] k_load_6_reg_847;
wire   [7:0] tmp_39_fu_536_p2;
reg   [7:0] tmp_39_reg_857;
wire   [4:0] k_addr_5_reg_867;
wire   [4:0] k_addr_7_reg_877;
wire   [7:0] tmp_41_fu_564_p2;
reg   [7:0] tmp_41_reg_882;
wire   [0:0] ap_CS_fsm_state5;
wire   [7:0] tmp_43_fu_570_p2;
reg   [7:0] tmp_43_reg_887;
wire   [7:0] y_20_fu_596_p3;
reg   [7:0] y_20_reg_892;
wire   [3:0] tmp_23_fu_612_p1;
reg   [3:0] tmp_23_reg_899;
wire   [0:0] ap_CS_fsm_state7;
wire   [0:0] tmp_22_fu_604_p3;
reg   [4:0] k_addr_9_reg_914;
wire   [4:0] i_28_fu_632_p2;
reg   [4:0] i_28_reg_920;
reg   [4:0] k_addr_11_reg_940;
reg   [4:0] k_addr_13_reg_950;
reg   [4:0] k_addr_15_reg_961;
wire   [4:0] k_addr_17_reg_981;
wire   [4:0] k_addr_19_reg_991;
wire   [4:0] k_addr_21_reg_1001;
wire   [4:0] k_addr_23_reg_1011;
wire   [4:0] tmp_25_fu_726_p1;
reg   [4:0] tmp_25_reg_1019;
wire   [0:0] ap_CS_fsm_state18;
wire   [0:0] tmp_24_fu_718_p3;
reg   [4:0] k_addr_25_reg_1034;
wire   [5:0] i_29_fu_746_p2;
reg   [5:0] i_29_reg_1040;
reg   [4:0] k_addr_27_reg_1050;
reg   [4:0] k_addr_29_reg_1060;
reg   [4:0] k_addr_31_reg_1071;
reg   [4:0] i_reg_451;
wire   [0:0] ap_CS_fsm_state6;
wire   [0:0] ap_CS_fsm_state12;
reg   [5:0] i_1_reg_462;
wire   [0:0] ap_CS_fsm_state17;
wire   [0:0] ap_CS_fsm_state23;
wire   [63:0] tmp_38_fu_526_p1;
wire   [63:0] tmp_fu_531_p1;
wire   [63:0] tmp_40_fu_542_p1;
wire   [63:0] tmp_42_fu_547_p1;
wire   [63:0] tmp_46_fu_622_p1;
wire   [63:0] tmp_47_fu_627_p1;
wire   [63:0] tmp_50_fu_643_p1;
wire   [63:0] tmp_52_fu_653_p1;
wire   [63:0] tmp_55_fu_663_p1;
wire   [63:0] tmp_57_fu_673_p1;
wire   [63:0] tmp_60_fu_683_p1;
wire   [63:0] tmp_62_fu_693_p1;
wire   [63:0] tmp_44_fu_698_p1;
wire   [63:0] tmp_65_fu_703_p1;
wire   [63:0] tmp_67_fu_708_p1;
wire   [63:0] tmp_69_fu_713_p1;
wire   [63:0] tmp_72_fu_736_p1;
wire   [63:0] tmp_73_fu_741_p1;
wire   [63:0] tmp_76_fu_757_p1;
wire   [63:0] tmp_78_fu_767_p1;
wire   [63:0] tmp_81_fu_777_p1;
wire   [63:0] tmp_83_fu_787_p1;
wire   [63:0] tmp_86_fu_797_p1;
wire   [63:0] tmp_88_fu_807_p1;
wire   [7:0] tmp_s_fu_557_p2;
wire   [7:0] tmp1_fu_551_p2;
wire   [7:0] y_fu_576_p2;
wire   [0:0] tmp_21_fu_582_p3;
wire   [7:0] tmp_1_i_fu_590_p2;
wire   [3:0] tmp_45_fu_616_p2;
wire   [3:0] tmp_49_fu_638_p2;
wire   [3:0] tmp_51_fu_648_p2;
wire   [3:0] tmp_54_fu_658_p2;
wire   [3:0] tmp_56_fu_668_p2;
wire   [3:0] tmp_59_fu_678_p2;
wire   [3:0] tmp_61_fu_688_p2;
wire   [4:0] tmp_71_fu_730_p2;
wire   [4:0] tmp_75_fu_752_p2;
wire   [4:0] tmp_77_fu_762_p2;
wire   [4:0] tmp_80_fu_772_p2;
wire   [4:0] tmp_82_fu_782_p2;
wire   [4:0] tmp_85_fu_792_p2;
wire   [4:0] tmp_87_fu_802_p2;
reg   [22:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 23'b1;
end

aes_expandEncKey_dEe #(
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
    .q1(sbox_q1),
    .address2(sbox_address2),
    .ce2(sbox_ce2),
    .q2(sbox_q2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        i_1_reg_462 <= i_29_reg_1040;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        i_1_reg_462 <= ap_const_lv6_14;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i_reg_451 <= i_28_reg_920;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_451 <= ap_const_lv5_4;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        reg_495 <= k_q0;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_495 <= k_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state7) & (tmp_22_fu_604_p3 == 1'b0))) begin
        i_28_reg_920 <= i_28_fu_632_p2;
        k_addr_9_reg_914 <= tmp_47_fu_627_p1;
        tmp_23_reg_899 <= tmp_23_fu_612_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) & (1'b0 == tmp_24_fu_718_p3))) begin
        i_29_reg_1040 <= i_29_fu_746_p2;
        k_addr_25_reg_1034 <= tmp_73_fu_741_p1;
        tmp_25_reg_1019 <= tmp_25_fu_726_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        k_addr_11_reg_940[3 : 1] <= tmp_52_fu_653_p1[3 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        k_addr_13_reg_950[0] <= tmp_57_fu_673_p1[0];
k_addr_13_reg_950[3 : 2] <= tmp_57_fu_673_p1[3 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        k_addr_15_reg_961[3 : 2] <= tmp_62_fu_693_p1[3 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        k_addr_27_reg_1050[4 : 1] <= tmp_78_fu_767_p1[4 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        k_addr_29_reg_1060[0] <= tmp_83_fu_787_p1[0];
k_addr_29_reg_1060[4 : 2] <= tmp_83_fu_787_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        k_addr_31_reg_1071[4 : 2] <= tmp_88_fu_807_p1[4 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_load_6_reg_847 <= k_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14))) begin
        reg_491 <= k_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_500 <= grp_fu_473_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_506 <= grp_fu_473_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state21))) begin
        reg_511 <= grp_fu_473_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16))) begin
        reg_516 <= grp_fu_479_p2;
        reg_521 <= grp_fu_485_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_39_reg_857 <= tmp_39_fu_536_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_41_reg_882 <= tmp_41_fu_564_p2;
        tmp_43_reg_887 <= tmp_43_fu_570_p2;
        y_20_reg_892 <= y_20_fu_596_p3;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | ((1'b1 == ap_CS_fsm_state18) & ~(1'b0 == tmp_24_fu_718_p3)))) begin
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
    if (((1'b1 == ap_CS_fsm_state18) & ~(1'b0 == tmp_24_fu_718_p3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        k_address0 = k_addr_29_reg_1060;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        k_address0 = k_addr_25_reg_1034;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        k_address0 = tmp_86_fu_797_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        k_address0 = tmp_81_fu_777_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        k_address0 = tmp_76_fu_757_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        k_address0 = tmp_72_fu_736_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        k_address0 = k_addr_21_reg_1001;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        k_address0 = k_addr_17_reg_981;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        k_address0 = ap_const_lv64_12;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        k_address0 = ap_const_lv64_10;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        k_address0 = ap_const_lv64_E;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        k_address0 = k_addr_13_reg_950;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        k_address0 = k_addr_9_reg_914;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        k_address0 = tmp_60_fu_683_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        k_address0 = tmp_55_fu_663_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        k_address0 = tmp_50_fu_643_p1;
    end else if (((1'b1 == ap_CS_fsm_state7) & ~(tmp_22_fu_604_p3 == 1'b0))) begin
        k_address0 = ap_const_lv64_C;
    end else if (((1'b1 == ap_CS_fsm_state7) & (tmp_22_fu_604_p3 == 1'b0))) begin
        k_address0 = tmp_46_fu_622_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        k_address0 = k_addr_5_reg_867;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        k_address0 = k_addr_reg_832;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        k_address0 = ap_const_lv64_2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        k_address0 = ap_const_lv64_0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        k_address0 = ap_const_lv64_1F;
    end else if ((ap_CS_fsm_state1 == 1'b1)) begin
        k_address0 = ap_const_lv64_1D;
    end else begin
        k_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        k_address1 = k_addr_31_reg_1071;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        k_address1 = k_addr_27_reg_1050;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        k_address1 = tmp_88_fu_807_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        k_address1 = tmp_83_fu_787_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        k_address1 = tmp_78_fu_767_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        k_address1 = tmp_73_fu_741_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        k_address1 = k_addr_23_reg_1011;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        k_address1 = k_addr_19_reg_991;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        k_address1 = ap_const_lv64_13;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        k_address1 = ap_const_lv64_11;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        k_address1 = ap_const_lv64_F;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        k_address1 = k_addr_15_reg_961;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        k_address1 = k_addr_11_reg_940;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        k_address1 = tmp_62_fu_693_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        k_address1 = tmp_57_fu_673_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        k_address1 = tmp_52_fu_653_p1;
    end else if (((1'b1 == ap_CS_fsm_state7) & ~(tmp_22_fu_604_p3 == 1'b0))) begin
        k_address1 = ap_const_lv64_D;
    end else if (((1'b1 == ap_CS_fsm_state7) & (tmp_22_fu_604_p3 == 1'b0))) begin
        k_address1 = tmp_47_fu_627_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        k_address1 = k_addr_7_reg_877;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        k_address1 = k_addr_3_reg_842;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        k_address1 = ap_const_lv64_3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        k_address1 = ap_const_lv64_1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        k_address1 = ap_const_lv64_1C;
    end else if ((ap_CS_fsm_state1 == 1'b1)) begin
        k_address1 = ap_const_lv64_1E;
    end else begin
        k_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | ((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0)) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state7) & (tmp_22_fu_604_p3 == 1'b0)) | ((1'b1 == ap_CS_fsm_state7) & ~(tmp_22_fu_604_p3 == 1'b0)) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state23))) begin
        k_ce0 = 1'b1;
    end else begin
        k_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state16) | ((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0)) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state7) & (tmp_22_fu_604_p3 == 1'b0)) | ((1'b1 == ap_CS_fsm_state7) & ~(tmp_22_fu_604_p3 == 1'b0)) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state23))) begin
        k_ce1 = 1'b1;
    end else begin
        k_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state17))) begin
        k_d0 = reg_516;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state23))) begin
        k_d0 = reg_511;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22))) begin
        k_d0 = reg_500;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        k_d0 = tmp_41_reg_882;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        k_d0 = tmp_s_fu_557_p2;
    end else begin
        k_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state17))) begin
        k_d1 = reg_521;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state23))) begin
        k_d1 = reg_500;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22))) begin
        k_d1 = reg_506;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        k_d1 = tmp_43_reg_887;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        k_d1 = tmp_39_reg_857;
    end else begin
        k_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state23))) begin
        k_we0 = 1'b1;
    end else begin
        k_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state23))) begin
        k_we1 = 1'b1;
    end else begin
        k_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        sbox_address0 = tmp_67_fu_708_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sbox_address0 = tmp_44_fu_698_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sbox_address0 = tmp_fu_531_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sbox_address0 = tmp_38_fu_526_p1;
    end else begin
        sbox_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        sbox_address1 = tmp_69_fu_713_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        sbox_address1 = tmp_65_fu_703_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        sbox_address1 = tmp_40_fu_542_p1;
    end else begin
        sbox_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state15))) begin
        sbox_ce0 = 1'b1;
    end else begin
        sbox_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15))) begin
        sbox_ce1 = 1'b1;
    end else begin
        sbox_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sbox_ce2 = 1'b1;
    end else begin
        sbox_ce2 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
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
            if (~(tmp_22_fu_604_p3 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
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
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
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
            if (~(1'b0 == tmp_24_fu_718_p3)) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
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
            ap_NS_fsm = ap_ST_fsm_state18;
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

assign ap_return = y_20_reg_892;

assign grp_fu_473_p2 = (k_q1 ^ k_q0);

assign grp_fu_479_p2 = (k_q0 ^ sbox_q0);

assign grp_fu_485_p2 = (k_q1 ^ sbox_q1);

assign i_28_fu_632_p2 = (ap_const_lv5_4 + i_reg_451);

assign i_29_fu_746_p2 = (ap_const_lv6_4 + i_1_reg_462);

assign k_addr_17_reg_981 = ap_const_lv64_10;

assign k_addr_19_reg_991 = ap_const_lv64_11;

assign k_addr_21_reg_1001 = ap_const_lv64_12;

assign k_addr_23_reg_1011 = ap_const_lv64_13;

assign k_addr_3_reg_842 = ap_const_lv64_1;

assign k_addr_5_reg_867 = ap_const_lv64_2;

assign k_addr_7_reg_877 = ap_const_lv64_3;

assign k_addr_reg_832 = ap_const_lv64_0;

assign sbox_address2 = tmp_42_fu_547_p1;

assign tmp1_fu_551_p2 = (reg_491 ^ rc_read);

assign tmp_1_i_fu_590_p2 = (y_fu_576_p2 ^ ap_const_lv8_1B);

assign tmp_21_fu_582_p3 = rc_read[ap_const_lv32_7];

assign tmp_22_fu_604_p3 = i_reg_451[ap_const_lv32_4];

assign tmp_23_fu_612_p1 = i_reg_451[3:0];

assign tmp_24_fu_718_p3 = i_1_reg_462[ap_const_lv32_5];

assign tmp_25_fu_726_p1 = i_1_reg_462[4:0];

assign tmp_38_fu_526_p1 = reg_495;

assign tmp_39_fu_536_p2 = (k_q1 ^ sbox_q0);

assign tmp_40_fu_542_p1 = reg_495;

assign tmp_41_fu_564_p2 = (k_q0 ^ sbox_q1);

assign tmp_42_fu_547_p1 = k_load_6_reg_847;

assign tmp_43_fu_570_p2 = (k_q1 ^ sbox_q2);

assign tmp_44_fu_698_p1 = reg_491;

assign tmp_45_fu_616_p2 = ($signed(ap_const_lv4_C) + $signed(tmp_23_fu_612_p1));

assign tmp_46_fu_622_p1 = tmp_45_fu_616_p2;

assign tmp_47_fu_627_p1 = i_reg_451;

assign tmp_49_fu_638_p2 = ($signed(ap_const_lv4_D) + $signed(tmp_23_reg_899));

assign tmp_50_fu_643_p1 = tmp_49_fu_638_p2;

assign tmp_51_fu_648_p2 = (tmp_23_reg_899 | ap_const_lv4_1);

assign tmp_52_fu_653_p1 = tmp_51_fu_648_p2;

assign tmp_54_fu_658_p2 = ($signed(ap_const_lv4_E) + $signed(tmp_23_reg_899));

assign tmp_55_fu_663_p1 = tmp_54_fu_658_p2;

assign tmp_56_fu_668_p2 = (tmp_23_reg_899 | ap_const_lv4_2);

assign tmp_57_fu_673_p1 = tmp_56_fu_668_p2;

assign tmp_59_fu_678_p2 = ($signed(ap_const_lv4_F) + $signed(tmp_23_reg_899));

assign tmp_60_fu_683_p1 = tmp_59_fu_678_p2;

assign tmp_61_fu_688_p2 = (tmp_23_reg_899 | ap_const_lv4_3);

assign tmp_62_fu_693_p1 = tmp_61_fu_688_p2;

assign tmp_65_fu_703_p1 = reg_495;

assign tmp_67_fu_708_p1 = reg_491;

assign tmp_69_fu_713_p1 = reg_495;

assign tmp_71_fu_730_p2 = ($signed(ap_const_lv5_1C) + $signed(tmp_25_fu_726_p1));

assign tmp_72_fu_736_p1 = tmp_71_fu_730_p2;

assign tmp_73_fu_741_p1 = i_1_reg_462;

assign tmp_75_fu_752_p2 = ($signed(ap_const_lv5_1D) + $signed(tmp_25_reg_1019));

assign tmp_76_fu_757_p1 = tmp_75_fu_752_p2;

assign tmp_77_fu_762_p2 = (tmp_25_reg_1019 | ap_const_lv5_1);

assign tmp_78_fu_767_p1 = tmp_77_fu_762_p2;

assign tmp_80_fu_772_p2 = ($signed(ap_const_lv5_1E) + $signed(tmp_25_reg_1019));

assign tmp_81_fu_777_p1 = tmp_80_fu_772_p2;

assign tmp_82_fu_782_p2 = (tmp_25_reg_1019 | ap_const_lv5_2);

assign tmp_83_fu_787_p1 = tmp_82_fu_782_p2;

assign tmp_85_fu_792_p2 = ($signed(ap_const_lv5_1F) + $signed(tmp_25_reg_1019));

assign tmp_86_fu_797_p1 = tmp_85_fu_792_p2;

assign tmp_87_fu_802_p2 = (tmp_25_reg_1019 | ap_const_lv5_3);

assign tmp_88_fu_807_p1 = tmp_87_fu_802_p2;

assign tmp_fu_531_p1 = reg_491;

assign tmp_s_fu_557_p2 = (tmp1_fu_551_p2 ^ sbox_q0);

assign y_20_fu_596_p3 = ((tmp_21_fu_582_p3[0:0] === 1'b1) ? tmp_1_i_fu_590_p2 : y_fu_576_p2);

assign y_fu_576_p2 = rc_read << ap_const_lv8_1;

always @ (posedge ap_clk) begin
    k_addr_11_reg_940[0] <= 1'b1;
    k_addr_11_reg_940[4] <= 1'b0;
    k_addr_13_reg_950[1] <= 1'b1;
    k_addr_13_reg_950[4] <= 1'b0;
    k_addr_15_reg_961[1:0] <= 2'b11;
    k_addr_15_reg_961[4] <= 1'b0;
    k_addr_27_reg_1050[0] <= 1'b1;
    k_addr_29_reg_1060[1] <= 1'b1;
    k_addr_31_reg_1071[1:0] <= 2'b11;
end

endmodule //aes_expandEncKey
