vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_7
vlib riviera/zynq_ultra_ps_e_vip_v1_0_7
vlib riviera/xil_defaultlib

vmap xilinx_vip riviera/xilinx_vip
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 riviera/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 riviera/zynq_ultra_ps_e_vip_v1_0_7
vmap xil_defaultlib riviera/xil_defaultlib

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

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0/sim/ps_block_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/ps_block/sim/ps_block.v" \

vlog -work xil_defaultlib \
"glbl.v"

