//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Fri Jul 16 08:17:41 2021
//Host        : madorsky-d2.phys.ufl.edu running 64-bit CentOS Linux release 8.2.2004 (Core)
//Command     : generate_target ps_block_wrapper.bd
//Design      : ps_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ps_block_wrapper
   (fclkn_1,
    fclkp_1,
    gth_refClkN_i_1,
    gth_refClkP_i_1);
  input fclkn_1;
  input fclkp_1;
  input [1:0]gth_refClkN_i_1;
  input [1:0]gth_refClkP_i_1;

  wire fclkn_1;
  wire fclkp_1;
  wire [1:0]gth_refClkN_i_1;
  wire [1:0]gth_refClkP_i_1;

  ps_block ps_block_i
       (.fclkn_1(fclkn_1),
        .fclkp_1(fclkp_1),
        .gth_refClkN_i_1(gth_refClkN_i_1),
        .gth_refClkP_i_1(gth_refClkP_i_1));
endmodule
