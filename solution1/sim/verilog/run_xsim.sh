
/opt/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_aes256cbc_top -prj aes256cbc.prj --initfile "/opt/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s aes256cbc 
/opt/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings aes256cbc -tclbatch aes256cbc.tcl

