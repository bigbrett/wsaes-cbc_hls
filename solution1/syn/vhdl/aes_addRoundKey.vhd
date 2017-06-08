-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity aes_addRoundKey is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    buf_r_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    buf_r_ce0 : OUT STD_LOGIC;
    buf_r_we0 : OUT STD_LOGIC;
    buf_r_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    buf_r_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    key_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    key_ce0 : OUT STD_LOGIC;
    key_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    key_offset : IN STD_LOGIC_VECTOR (5 downto 0) );
end;


architecture behav of aes_addRoundKey is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_38_fu_61_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_38_reg_103 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_46_fu_65_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_46_reg_108 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_fu_75_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal buf_addr_reg_121 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_50 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal sum_cast_fu_91_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_81_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_49_cast_fu_71_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal sum_fu_86_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_reg_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state3))) then 
                i_reg_50 <= i_46_reg_108;
            elsif (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then 
                i_reg_50 <= ap_const_lv5_10;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state2) and (tmp_fu_75_p2 = ap_const_lv1_0))) then
                buf_addr_reg_121 <= tmp_s_fu_81_p1(4 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state2))) then
                i_46_reg_108 <= i_46_fu_65_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_CS_fsm_state1 = ap_const_lv1_1) and not((ap_start = ap_const_logic_0)))) then
                tmp_38_reg_103 <= tmp_38_fu_61_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, tmp_fu_75_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (not((tmp_fu_75_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0 downto 0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1 downto 1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2 downto 2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_fu_75_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1)) or ((ap_const_lv1_1 = ap_CS_fsm_state2) and not((tmp_fu_75_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_CS_fsm_state1 = ap_const_lv1_1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, tmp_fu_75_p2)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state2) and not((tmp_fu_75_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    buf_r_address0_assign_proc : process(ap_CS_fsm_state2, buf_addr_reg_121, ap_CS_fsm_state3, tmp_s_fu_81_p1)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3))) then 
            buf_r_address0 <= buf_addr_reg_121;
        elsif (((ap_const_lv1_1 = ap_CS_fsm_state2))) then 
            buf_r_address0 <= tmp_s_fu_81_p1(4 - 1 downto 0);
        else 
            buf_r_address0 <= "XXXX";
        end if; 
    end process;


    buf_r_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state3)
    begin
        if ((((ap_const_lv1_1 = ap_CS_fsm_state2)) or ((ap_const_lv1_1 = ap_CS_fsm_state3)))) then 
            buf_r_ce0 <= ap_const_logic_1;
        else 
            buf_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_r_d0 <= (buf_r_q0 xor key_q0);

    buf_r_we0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((((ap_const_lv1_1 = ap_CS_fsm_state3)))) then 
            buf_r_we0 <= ap_const_logic_1;
        else 
            buf_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    i_46_fu_65_p2 <= std_logic_vector(unsigned(i_reg_50) + unsigned(ap_const_lv5_1F));
        i_49_cast_fu_71_p1 <= std_logic_vector(resize(signed(i_46_fu_65_p2),8));

    key_address0 <= sum_cast_fu_91_p1(5 - 1 downto 0);

    key_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state2))) then 
            key_ce0 <= ap_const_logic_1;
        else 
            key_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    sum_cast_fu_91_p1 <= std_logic_vector(resize(unsigned(sum_fu_86_p2),64));
    sum_fu_86_p2 <= std_logic_vector(unsigned(i_46_fu_65_p2) + unsigned(tmp_38_reg_103));
    tmp_38_fu_61_p1 <= key_offset(5 - 1 downto 0);
    tmp_fu_75_p2 <= "1" when (i_reg_50 = ap_const_lv5_0) else "0";
    tmp_s_fu_81_p1 <= std_logic_vector(resize(unsigned(i_49_cast_fu_71_p1),64));
end behav;
