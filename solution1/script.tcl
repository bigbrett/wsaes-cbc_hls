############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project wsaes_hls
set_top aescbc
add_files wsaes_hls/src/aesecb.h
add_files wsaes_hls/src/aesecb.c
add_files wsaes_hls/src/aescbc.h
add_files wsaes_hls/src/aescbc.c
add_files -tb wsaes_hls/src/aescbc_tb.c
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 12 -name default
#source "./wsaes_hls/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
