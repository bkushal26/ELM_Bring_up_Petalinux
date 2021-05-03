vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_5
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_5
vlib modelsim_lib/msim/xil_defaultlib

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 modelsim_lib/msim/axi_vip_v1_1_5
vmap zynq_ultra_ps_e_vip_v1_0_5 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_5
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_5 -L zynq_ultra_ps_e_vip_v1_0_5 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/cac7/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5 -64 -incr -sv -L axi_vip_v1_1_5 -L zynq_ultra_ps_e_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/cac7/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_5 -64 -incr -sv -L axi_vip_v1_1_5 -L zynq_ultra_ps_e_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/cac7/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/cac7/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/cac7/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0/sim_tlm" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0" "+incdir+/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0/sim/ps_block_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/ps_block/sim/ps_block.v" \

vlog -work xil_defaultlib \
"glbl.v"

