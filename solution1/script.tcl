############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aescbc
set_top aescbc
add_files aescbc/src/aesecb.h
add_files aescbc/src/aesecb.c
add_files aescbc/src/aescbc.h
add_files aescbc/src/aescbc.c
add_files -tb aescbc/src/aescbc_tb.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 8 -name default
#source "./aescbc/solution1/directives.tcl"
csim_design -ldflags {-lssl -lcrypto} -clean -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "AES CBC" -vendor "websensing.com" -display_name "aescbc"
