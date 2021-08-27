vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/ip/vio_0/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/ip/vio_0/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/ip/vio_0/sim/vio_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

