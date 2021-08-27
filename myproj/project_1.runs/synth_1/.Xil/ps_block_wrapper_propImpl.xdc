set_property SRC_FILE_INFO {cfile:/home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.srcs/sources_1/bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_2/constraints/bs_switch.xdc rfile:../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_2/constraints/bs_switch.xdc id:1 order:EARLY scoped_inst:ps_block_i/debug_bridge_0/inst/bs_switch_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.srcs/constrs_1/new/elmXDC.xdc rfile:../../../project_1.srcs/constrs_1/new/elmXDC.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:/home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.srcs/sources_1/bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_0/constraints/axi_jtag.xdc rfile:../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_0/constraints/axi_jtag.xdc id:3 order:LATE scoped_inst:ps_block_i/debug_bridge_0/inst/axi_jtag/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.srcs/sources_1/bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_1/constraints/bsip.xdc rfile:../../../project_1.srcs/sources_1/bd/ps_block/ip/ps_block_debug_bridge_0_1/bd_0/ip/ip_1/constraints/bsip.xdc id:4 order:LATE scoped_inst:ps_block_i/debug_bridge_0/inst/bsip/inst} [current_design]
current_instance ps_block_i/debug_bridge_0/inst/bs_switch_1/inst
set_property src_info {type:SCOPED_XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -type METHODOLOGY -id TIMING-14 -tags "1025927" -user "bs_switch" -desc "CDC is handled through handshake process" -scope -objects [get_cells -hierarchical -filter {NAME =~ "*BSCAN_SWITCH.*EXT_BSCAN.bscan_switch/m_bscan_drck[*]_INST*"}]
current_instance
set_property src_info {type:XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V6 [get_ports {gth_refClkP_i_0[1]}]
set_property src_info {type:XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y6 [get_ports {gth_refClkP_i_0[0]}]
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AF7 [get_ports fclkp_0]
current_instance ps_block_i/debug_bridge_0/inst/axi_jtag/inst
set_property src_info {type:SCOPED_XDC file:3 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 41.248 -from [get_cells -hierarchical -filter {NAME =~ "*u_jtag_proc/tdi_output_reg[0]"}] -datapath_only
set_property src_info {type:SCOPED_XDC file:3 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 41.248 -from [get_cells -hierarchical -filter {NAME =~ "*u_jtag_proc/tms_output_reg[0]"}] -datapath_only
set_property src_info {type:SCOPED_XDC file:3 line:16 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id CDC-1 -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical -filter {NAME =~ "*u_jtag_proc/tdi_output_reg[0]*"}]]  -tags "1025927" -user "axi_jtag" -description {CDC is handled through handshake process}
set_property src_info {type:SCOPED_XDC file:3 line:17 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id CDC-1 -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical -filter {NAME =~ "*u_jtag_proc/tms_output_reg[0]*"}]]  -tags "1025927" -user "axi_jtag" -description {CDC is handled through handshake process}
set_property src_info {type:SCOPED_XDC file:3 line:18 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -scope -type CDC -id CDC-15 -from [get_pins -filter {REF_PIN_NAME=~C} -of_objects [get_cells -hierarchical -filter {NAME =~ "*u_jtag_proc/tdi_output_reg[0]*"}]]  -tags "1025927" -user "axi_jtag" -description {CDC is handled through handshake process}
current_instance
current_instance ps_block_i/debug_bridge_0/inst/bsip/inst
set_property src_info {type:SCOPED_XDC file:4 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay 41.248 -from [get_cells -hierarchical -filter {NAME =~ "*USE_SOFTBSCAN.U_BSCAN_TAP/U_BASETAP/TDO_O_reg*"}] -through [get_ports -scoped_to_current_instance tap_tdo] -datapath_only
set_property src_info {type:SCOPED_XDC file:4 line:12 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -type METHODOLOGY -id TIMING-14 -tags "1025927" -user "bsip" -desc "CDC is handled through handshake process" -scope -objects [get_cells -hierarchical -filter {NAME =~ "*USE_SOFTBSCAN.U_BSCAN_TAP//i_*"}]
set_property src_info {type:SCOPED_XDC file:4 line:14 export:INPUT save:INPUT read:READ} [current_design]
create_waiver -internal -quiet -type METHODOLOGY -id TIMING-14 -tags "1025927" -user "bsip" -desc "CDC is handled through handshake process" -scope -objects [get_cells -hierarchical -filter {NAME =~ "*USE_SOFTBSCAN.U_BSCAN_TAP/U_BASETAP/U_TAP/update_INST_0*"}]
