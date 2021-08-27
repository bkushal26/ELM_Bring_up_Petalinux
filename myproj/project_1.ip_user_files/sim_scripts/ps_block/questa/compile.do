vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_7
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_7
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_21
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_20
vlib questa_lib/msim/axi_crossbar_v2_1_22
vlib questa_lib/msim/axi_jtag_v1_0_0
vlib questa_lib/msim/bsip_v1_1_0
vlib questa_lib/msim/ltlib_v1_0_0
vlib questa_lib/msim/bs_switch_v1_0_0
vlib questa_lib/msim/xsdbm_v3_0_0
vlib questa_lib/msim/lut_buffer_v2_0_0
vlib questa_lib/msim/axi_protocol_converter_v2_1_21
vlib questa_lib/msim/axi_clock_converter_v2_1_20
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/axi_dwidth_converter_v2_1_21

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 questa_lib/msim/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_7
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 questa_lib/msim/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 questa_lib/msim/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 questa_lib/msim/axi_crossbar_v2_1_22
vmap axi_jtag_v1_0_0 questa_lib/msim/axi_jtag_v1_0_0
vmap bsip_v1_1_0 questa_lib/msim/bsip_v1_1_0
vmap ltlib_v1_0_0 questa_lib/msim/ltlib_v1_0_0
vmap bs_switch_v1_0_0 questa_lib/msim/bs_switch_v1_0_0
vmap xsdbm_v3_0_0 questa_lib/msim/xsdbm_v3_0_0
vmap lut_buffer_v2_0_0 questa_lib/msim/lut_buffer_v2_0_0
vmap axi_protocol_converter_v2_1_21 questa_lib/msim/axi_protocol_converter_v2_1_21
vmap axi_clock_converter_v2_1_20 questa_lib/msim/axi_clock_converter_v2_1_20
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_21 questa_lib/msim/axi_dwidth_converter_v2_1_21

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7 -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0/sim/ps_block_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ps_block/ip/ps_block_rst_ps8_0_96M_0/sim/ps_block_rst_ps8_0_96M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_clkTestTop_0_0/sim/ps_block_clkTestTop_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_xbar_0/sim/ps_block_xbar_0.v" \

vlog -work axi_jtag_v1_0_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/421b/hdl/axi_jtag_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_0/sim/bd_5559_axi_jtag_0.v" \

vlog -work bsip_v1_1_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/275b/hdl/bsip_v1_1_rfs.v" \

vcom -work bsip_v1_1_0 -64 -93 \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/275b/hdl/bsip_v1_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_1/sim/bd_5559_bsip_0.vhd" \

vlog -work ltlib_v1_0_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/ltlib_v1_0_vl_rfs.v" \

vlog -work bs_switch_v1_0_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/bs_switch_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_2/sim/bd_5559_bs_switch_1_0.v" \
"../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/sim/bd_5559.v" \
"../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/sim/ps_block_debug_bridge_0_1.v" \

vlog -work xsdbm_v3_0_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/xsdbm_v3_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_debug_bridge_1_1/bd_0/ip/ip_0/sim/bd_9508_xsdbm_0.v" \

vlog -work lut_buffer_v2_0_0 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/6b1c/hdl/lut_buffer_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_debug_bridge_1_1/bd_0/ip/ip_1/sim/bd_9508_lut_buffer_0.v" \
"../../../bd/ps_block/ip/ps_block_debug_bridge_1_1/bd_0/sim/bd_9508.v" \
"../../../bd/ps_block/ip/ps_block_debug_bridge_1_1/sim/ps_block_debug_bridge_1_1.v" \
"../../../bd/ps_block/ip/ps_block_vio_0_0/sim/ps_block_vio_0_0.v" \
"../../../bd/ps_block/ipshared/a423/hdl/reg64_v1_0_S00_AXI.v" \
"../../../bd/ps_block/ipshared/a423/hdl/reg64_v1_0.v" \
"../../../bd/ps_block/ip/ps_block_reg64_0_0/sim/ps_block_reg64_0_0.v" \

vlog -work axi_protocol_converter_v2_1_21 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_auto_pc_0/sim/ps_block_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_20 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/7589/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_21 -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/07be/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/122e/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/46fd/hdl" "+incdir+/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/ps_block/ip/ps_block_auto_ds_0/sim/ps_block_auto_ds_0.v" \
"../../../bd/ps_block/ip/ps_block_auto_pc_1/sim/ps_block_auto_pc_1.v" \
"../../../bd/ps_block/sim/ps_block.v" \

vlog -work xil_defaultlib \
"glbl.v"

