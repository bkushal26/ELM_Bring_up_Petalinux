-makelib ies_lib/xilinx_vip -sv \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/home/software/xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_7 -sv \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_7 -sv \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_zynq_ultra_ps_e_0_0/sim/ps_block_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_rst_ps8_0_96M_0/sim/ps_block_rst_ps8_0_96M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_clkTestTop_0_0/sim/ps_block_clkTestTop_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_21 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_20 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_22 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_xbar_0/sim/ps_block_xbar_0.v" \
-endlib
-makelib ies_lib/axi_jtag_v1_0_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/421b/hdl/axi_jtag_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_0/sim/bd_5559_axi_jtag_0.v" \
-endlib
-makelib ies_lib/bsip_v1_1_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/275b/hdl/bsip_v1_1_rfs.v" \
-endlib
-makelib ies_lib/bsip_v1_1_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/275b/hdl/bsip_v1_1_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_1/sim/bd_5559_bsip_0.vhd" \
-endlib
-makelib ies_lib/ltlib_v1_0_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/1b7e/hdl/ltlib_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/bs_switch_v1_0_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/4543/hdl/bs_switch_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_2/sim/bd_5559_bs_switch_1_0.v" \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/sim/bd_5559.v" \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_0_1/sim/ps_block_debug_bridge_0_1.v" \
-endlib
-makelib ies_lib/xsdbm_v3_0_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/b205/hdl/xsdbm_v3_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_1_1/bd_0/ip/ip_0/sim/bd_9508_xsdbm_0.v" \
-endlib
-makelib ies_lib/lut_buffer_v2_0_0 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/6b1c/hdl/lut_buffer_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_1_1/bd_0/ip/ip_1/sim/bd_9508_lut_buffer_0.v" \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_1_1/bd_0/sim/bd_9508.v" \
  "../../../bd/ps_block/ip/ps_block_debug_bridge_1_1/sim/ps_block_debug_bridge_1_1.v" \
  "../../../bd/ps_block/ip/ps_block_vio_0_0/sim/ps_block_vio_0_0.v" \
  "../../../bd/ps_block/ipshared/a423/hdl/reg64_v1_0_S00_AXI.v" \
  "../../../bd/ps_block/ipshared/a423/hdl/reg64_v1_0.v" \
  "../../../bd/ps_block/ip/ps_block_reg64_0_0/sim/ps_block_reg64_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_21 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_auto_pc_0/sim/ps_block_auto_pc_0.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_20 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/7589/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/axi_dwidth_converter_v2_1_21 \
  "../../../../project_1.srcs/sources_1/bd/ps_block/ipshared/07be/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ps_block/ip/ps_block_auto_ds_0/sim/ps_block_auto_ds_0.v" \
  "../../../bd/ps_block/ip/ps_block_auto_pc_1/sim/ps_block_auto_pc_1.v" \
  "../../../bd/ps_block/sim/ps_block.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

