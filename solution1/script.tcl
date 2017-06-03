############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project aes256cbc
set_top aes256cbc
add_files aes256cbc/src/aes256ecb.h
add_files aes256cbc/src/aes256ecb.c
add_files aes256cbc/src/aes256cbc.h
add_files aes256cbc/src/aes256cbc.c
add_files -tb aes256cbc/src/aes256cbc_tb.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 8 -name default
#source "./aes256cbc/solution1/directives.tcl"
csim_design -ldflags {-lssl -lcrypto}
csynth_design
cosim_design -ldflags {-lssl -lcrypto}
export_design -format ip_catalog -description "AES 256 CBC" -vendor "websensing.com" -display_name "aes256cbc"
