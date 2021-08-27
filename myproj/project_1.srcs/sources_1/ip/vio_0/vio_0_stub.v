// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jul 23 03:04:59 2021
// Host        : madorsky-d2.phys.ufl.edu running 64-bit CentOS Linux release 8.2.2004 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/bhalerao/kushal/ELM_test_suites/vivadoProjects/elmGit/ELM_Bring_up_Petalinux/myproj/project_1.srcs/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu4cg-sfvc784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2020.1" *)
module vio_0(clk, probe_in0, probe_in1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[31:0],probe_in1[31:0]" */;
  input clk;
  input [31:0]probe_in0;
  input [31:0]probe_in1;
endmodule
