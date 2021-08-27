// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:reg64:1.0
// IP Revision: 7

(* X_CORE_INFO = "reg64_v1_0,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "ps_block_reg64_0_0,reg64_v1_0,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ps_block_reg64_0_0 (
  ctl_slv_reg0,
  ctl_slv_reg1,
  ctl_slv_reg2,
  ctl_slv_reg3,
  ctl_slv_reg4,
  ctl_slv_reg5,
  ctl_slv_reg6,
  ctl_slv_reg7,
  ctl_slv_reg8,
  ctl_slv_reg9,
  ctl_slv_reg10,
  ctl_slv_reg11,
  ctl_slv_reg12,
  ctl_slv_reg13,
  ctl_slv_reg14,
  ctl_slv_reg15,
  ctl_slv_reg16,
  ctl_slv_reg17,
  ctl_slv_reg18,
  ctl_slv_reg19,
  ctl_slv_reg20,
  ctl_slv_reg21,
  ctl_slv_reg22,
  ctl_slv_reg23,
  ctl_slv_reg24,
  ctl_slv_reg25,
  ctl_slv_reg26,
  ctl_slv_reg27,
  ctl_slv_reg28,
  ctl_slv_reg29,
  ctl_slv_reg30,
  ctl_slv_reg31,
  clk1_reg,
  clk2_reg,
  clk3_reg,
  clk4_reg,
  clk5_reg,
  clk6_reg,
  clk7_reg,
  clk8_reg,
  clk9_reg,
  clk10_reg,
  clk11_reg,
  clk12_reg,
  slv_reg44,
  slv_reg45,
  slv_reg46,
  slv_reg47,
  slv_reg48,
  slv_reg49,
  slv_reg50,
  slv_reg51,
  slv_reg52,
  slv_reg53,
  slv_reg54,
  slv_reg55,
  slv_reg56,
  slv_reg57,
  slv_reg58,
  slv_reg59,
  slv_reg60,
  slv_reg61,
  slv_reg62,
  slv_reg63,
  s00_axi_aclk,
  s00_axi_aresetn,
  s00_axi_awaddr,
  s00_axi_awprot,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_araddr,
  s00_axi_arprot,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rvalid,
  s00_axi_rready
);

output wire [31 : 0] ctl_slv_reg0;
output wire [31 : 0] ctl_slv_reg1;
output wire [31 : 0] ctl_slv_reg2;
output wire [31 : 0] ctl_slv_reg3;
output wire [31 : 0] ctl_slv_reg4;
output wire [31 : 0] ctl_slv_reg5;
output wire [31 : 0] ctl_slv_reg6;
output wire [31 : 0] ctl_slv_reg7;
output wire [31 : 0] ctl_slv_reg8;
output wire [31 : 0] ctl_slv_reg9;
output wire [31 : 0] ctl_slv_reg10;
output wire [31 : 0] ctl_slv_reg11;
output wire [31 : 0] ctl_slv_reg12;
output wire [31 : 0] ctl_slv_reg13;
output wire [31 : 0] ctl_slv_reg14;
output wire [31 : 0] ctl_slv_reg15;
output wire [31 : 0] ctl_slv_reg16;
output wire [31 : 0] ctl_slv_reg17;
output wire [31 : 0] ctl_slv_reg18;
output wire [31 : 0] ctl_slv_reg19;
output wire [31 : 0] ctl_slv_reg20;
output wire [31 : 0] ctl_slv_reg21;
output wire [31 : 0] ctl_slv_reg22;
output wire [31 : 0] ctl_slv_reg23;
output wire [31 : 0] ctl_slv_reg24;
output wire [31 : 0] ctl_slv_reg25;
output wire [31 : 0] ctl_slv_reg26;
output wire [31 : 0] ctl_slv_reg27;
output wire [31 : 0] ctl_slv_reg28;
output wire [31 : 0] ctl_slv_reg29;
output wire [31 : 0] ctl_slv_reg30;
output wire [31 : 0] ctl_slv_reg31;
input wire [31 : 0] clk1_reg;
input wire [31 : 0] clk2_reg;
input wire [31 : 0] clk3_reg;
input wire [31 : 0] clk4_reg;
input wire [31 : 0] clk5_reg;
input wire [31 : 0] clk6_reg;
input wire [31 : 0] clk7_reg;
input wire [31 : 0] clk8_reg;
input wire [31 : 0] clk9_reg;
input wire [31 : 0] clk10_reg;
input wire [31 : 0] clk11_reg;
input wire [31 : 0] clk12_reg;
input wire [31 : 0] slv_reg44;
input wire [31 : 0] slv_reg45;
input wire [31 : 0] slv_reg46;
input wire [31 : 0] slv_reg47;
input wire [31 : 0] slv_reg48;
input wire [31 : 0] slv_reg49;
input wire [31 : 0] slv_reg50;
input wire [31 : 0] slv_reg51;
input wire [31 : 0] slv_reg52;
input wire [31 : 0] slv_reg53;
input wire [31 : 0] slv_reg54;
input wire [31 : 0] slv_reg55;
input wire [31 : 0] slv_reg56;
input wire [31 : 0] slv_reg57;
input wire [31 : 0] slv_reg58;
input wire [31 : 0] slv_reg59;
input wire [31 : 0] slv_reg60;
input wire [31 : 0] slv_reg61;
input wire [31 : 0] slv_reg62;
input wire [31 : 0] slv_reg63;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 96968727, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN ps_block_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *)
input wire s00_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *)
input wire s00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [7 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [31 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [3 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [7 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [31 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire s00_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 64, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 96968727, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN ps_block_zynq_ultra_ps_\
e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire s00_axi_rready;

  reg64_v1_0 #(
    .C_S00_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S00_AXI_ADDR_WIDTH(8)  // Width of S_AXI address bus
  ) inst (
    .ctl_slv_reg0(ctl_slv_reg0),
    .ctl_slv_reg1(ctl_slv_reg1),
    .ctl_slv_reg2(ctl_slv_reg2),
    .ctl_slv_reg3(ctl_slv_reg3),
    .ctl_slv_reg4(ctl_slv_reg4),
    .ctl_slv_reg5(ctl_slv_reg5),
    .ctl_slv_reg6(ctl_slv_reg6),
    .ctl_slv_reg7(ctl_slv_reg7),
    .ctl_slv_reg8(ctl_slv_reg8),
    .ctl_slv_reg9(ctl_slv_reg9),
    .ctl_slv_reg10(ctl_slv_reg10),
    .ctl_slv_reg11(ctl_slv_reg11),
    .ctl_slv_reg12(ctl_slv_reg12),
    .ctl_slv_reg13(ctl_slv_reg13),
    .ctl_slv_reg14(ctl_slv_reg14),
    .ctl_slv_reg15(ctl_slv_reg15),
    .ctl_slv_reg16(ctl_slv_reg16),
    .ctl_slv_reg17(ctl_slv_reg17),
    .ctl_slv_reg18(ctl_slv_reg18),
    .ctl_slv_reg19(ctl_slv_reg19),
    .ctl_slv_reg20(ctl_slv_reg20),
    .ctl_slv_reg21(ctl_slv_reg21),
    .ctl_slv_reg22(ctl_slv_reg22),
    .ctl_slv_reg23(ctl_slv_reg23),
    .ctl_slv_reg24(ctl_slv_reg24),
    .ctl_slv_reg25(ctl_slv_reg25),
    .ctl_slv_reg26(ctl_slv_reg26),
    .ctl_slv_reg27(ctl_slv_reg27),
    .ctl_slv_reg28(ctl_slv_reg28),
    .ctl_slv_reg29(ctl_slv_reg29),
    .ctl_slv_reg30(ctl_slv_reg30),
    .ctl_slv_reg31(ctl_slv_reg31),
    .clk1_reg(clk1_reg),
    .clk2_reg(clk2_reg),
    .clk3_reg(clk3_reg),
    .clk4_reg(clk4_reg),
    .clk5_reg(clk5_reg),
    .clk6_reg(clk6_reg),
    .clk7_reg(clk7_reg),
    .clk8_reg(clk8_reg),
    .clk9_reg(clk9_reg),
    .clk10_reg(clk10_reg),
    .clk11_reg(clk11_reg),
    .clk12_reg(clk12_reg),
    .slv_reg44(slv_reg44),
    .slv_reg45(slv_reg45),
    .slv_reg46(slv_reg46),
    .slv_reg47(slv_reg47),
    .slv_reg48(slv_reg48),
    .slv_reg49(slv_reg49),
    .slv_reg50(slv_reg50),
    .slv_reg51(slv_reg51),
    .slv_reg52(slv_reg52),
    .slv_reg53(slv_reg53),
    .slv_reg54(slv_reg54),
    .slv_reg55(slv_reg55),
    .slv_reg56(slv_reg56),
    .slv_reg57(slv_reg57),
    .slv_reg58(slv_reg58),
    .slv_reg59(slv_reg59),
    .slv_reg60(slv_reg60),
    .slv_reg61(slv_reg61),
    .slv_reg62(slv_reg62),
    .slv_reg63(slv_reg63),
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready)
  );
endmodule
