# little-alchemy-385
Recreation of Little Alchemy 2 on FPGA.

## Setup
### Top-Level SystemVerilog Project
Create a new project in Vivado and import the files in `top_level_sv`.
Create a MicroBlaze Processor with 64KB memory and USB support.
### Import Little Alchemy IP Repo
Import the `little_alchemy_controller_1_0_ip` IP and add it to the block design
### Export Hardware and Start an Application Project in Vitis
Import the files in `software` to the `src` folder of the Application project in Vitis. 
