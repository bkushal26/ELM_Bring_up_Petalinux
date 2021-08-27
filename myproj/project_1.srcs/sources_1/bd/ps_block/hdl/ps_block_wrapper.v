//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Wed Aug 25 04:31:06 2021
//Host        : madorsky-d2.phys.ufl.edu running 64-bit CentOS Linux release 8.2.2004 (Core)
//Command     : generate_target ps_block_wrapper.bd
//Design      : ps_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ps_block_wrapper
   (fclkn_0,
    fclkp_0,
    gth_refClkN_i_0,
    gth_refClkP_i_0);
  input fclkn_0;
  input fclkp_0;
  input [1:0]gth_refClkN_i_0;
  input [1:0]gth_refClkP_i_0;

  wire fclkn_0;
  wire fclkp_0;
  wire [1:0]gth_refClkN_i_0;
  wire [1:0]gth_refClkP_i_0;

  ps_block ps_block_i
       (.fclkn_0(fclkn_0),
        .fclkp_0(fclkp_0),
        .gth_refClkN_i_0(gth_refClkN_i_0),
        .gth_refClkP_i_0(gth_refClkP_i_0));
endmodule
