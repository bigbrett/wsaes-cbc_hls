# wsaes_hls
 A hardware accelerator for the AES CBC symmetric cipher algorithm, designed in Vivado HLS and targeting the Avnet Zedboard (Xilinx Zynq 7020)

## 1. Overview 
This repository contains three key items:
1. `BUILD_PROJ.tcl`: A TCL build script that regenerates the Vivado HLS project from source
2. `solutionX/`: A directory (one for each solution) containing only the directives and autogenerated tcl creation scripts
3. `src/`: The design source files

## 2. Dependencies
1. Vivado and Vivado HLS 2015.1 or higher (YMMV on anything before 2016.4)
2. A linux host computer running the Vivado suite

## 3. Building the Project For the First Time
To build the project for the first time...

1. clone the repository: 

`$ git clone https://github.com/websensing/wsaes_hls.git`\
`$ cd wsaes_hls`

2. generate the HLS project (NOTE: you must be in the same folder as BUILD_PROJ.tcl): 

`$ /path/to/vivado_hls -f BUILD_PROJ.tcl`

3. Open the project, by navigating to wsaes_hls folder in the HLS gui, or by running the following command:

`$ /path/to/vivado_hls -p /path/to/wsaes_hls`

## 4. Misc. 
You may need to manually edit some paths in BUILD_PROJ.tcl if things are changed. Probably not, though.
