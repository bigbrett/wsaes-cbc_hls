#
# This script rebuilds the project from just the source files
#
cd ../
open_project -reset wsaes_hls
set_top aescbc 
add_files wsaes_hls/src/aescbc.c
add_files wsaes_hls/src/aescbc.h
add_files wsaes_hls/src/aesecb.c
add_files wsaes_hls/src/aesecb.h
add_files -tb wsaes_hls/src/aescbc_tb.c

cd wsaes_hls

# get solutions
set solutions [glob solution*]

# loop through and add each solution
foreach solution $solutions {
    open_solution -reset $solution
    set_part {xc7z020clg484-1} -tool vivado
    create_clock -period 12 -name default
    source "$solution/directives.tcl"
}

puts "\nProject generation complete!\n"
puts "To open this project: \n\t- run this command: /path/to/vivado_hls -p `pwd`\n\t- open this folder in the Vivado HLS gui"

exit

# NOTE: Uncomment below if you want to push the synthesis
# runs through before opening in project mode

#csim_design -clean -compiler gcc
#csynth_design
#cosim_design
#export_design -rtl verilog -format ip_catalog
