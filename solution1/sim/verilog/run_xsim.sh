
/opt/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_aescbc_top -prj aescbc.prj --initfile "/opt/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s aescbc 
/opt/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings aescbc -tclbatch aescbc.tcl

