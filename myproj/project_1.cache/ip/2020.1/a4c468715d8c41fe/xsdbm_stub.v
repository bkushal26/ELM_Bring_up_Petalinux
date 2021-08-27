// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Aug  5 05:44:21 2021
// Host        : madorsky-d2.phys.ufl.edu running 64-bit CentOS Linux release 8.2.2004 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ xsdbm_stub.v
// Design      : xsdbm
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu4cg-sfvc784-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xsdbm_v3_0_0_xsdbm,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sl_iport0_o, sl_oport0_i, update, capture, reset, 
  runtest, tck, tms, tdi, sel, shift, drck, tdo, bscanid_en, clk)
/* synthesis syn_black_box black_box_pad_pin="sl_iport0_o[36:0],sl_oport0_i[16:0],update,capture,reset,runtest,tck,tms,tdi,sel,shift,drck,tdo,bscanid_en,clk" */;
  output [36:0]sl_iport0_o;
  input [16:0]sl_oport0_i;
  input update;
  input capture;
  input reset;
  input runtest;
  input tck;
  input tms;
  input tdi;
  input sel;
  input shift;
  input drck;
  output tdo;
  input bscanid_en;
  input clk;
endmodule
