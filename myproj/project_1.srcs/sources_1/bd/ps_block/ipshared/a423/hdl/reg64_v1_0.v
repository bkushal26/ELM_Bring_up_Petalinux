
`timescale 1 ns / 1 ps

	module reg64_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 8
	)
	(
		// Users to add ports here

       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg0,
       //output reg [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg0,
	   output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg1,
	   output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg2,
	   output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg3,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg4,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg5,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg6,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg7,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg8,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg9,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg10,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg11,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg12,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg13,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg14,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg15,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg16,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg17,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg18,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg19,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg20,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg21,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg22,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg23,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg24,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg25,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg26,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg27,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg28,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg29,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg30,
       output wire [C_S00_AXI_DATA_WIDTH-1:0]	ctl_slv_reg31,
    
        
        //status Ports
        
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk1_reg, //slv_reg32,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk2_reg, //slv_reg33,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk3_reg, //slv_reg34,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk4_reg, //slv_reg35,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk5_reg, //slv_reg36,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk6_reg, //slv_reg37,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk7_reg, //slv_reg38,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk8_reg, //slv_reg39,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk9_reg, //slv_reg40,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk10_reg, //slv_reg41,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk11_reg, //slv_reg42,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	clk12_reg, //slv_reg43,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg44,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg45,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg46,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg47,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg48,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg49,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg50,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg51,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg52,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg53,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg54,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg55,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg56,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg57,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg58,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg59,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg60,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg61,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg62,
        input wire [C_S00_AXI_DATA_WIDTH-1:0]	slv_reg63,









		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	reg64_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) reg64_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
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
	    .clk1_reg(clk1_reg), //slv_reg32,
        .clk2_reg(clk2_reg), //slv_reg33,
        .clk3_reg(clk3_reg), //slv_reg34,
        .clk4_reg(clk4_reg), //slv_reg35,
        .clk5_reg(clk5_reg), //slv_reg36,
        .clk6_reg(clk6_reg), //slv_reg37,
        .clk7_reg(clk7_reg), //slv_reg38,
        .clk8_reg(clk8_reg), //slv_reg39,
        .clk9_reg(clk9_reg), //slv_reg40,
        .clk10_reg(clk10_reg), //slv_reg41,
        .clk11_reg(clk11_reg), //slv_reg42,
        .clk12_reg(clk12_reg), //slv_reg43,
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
       .slv_reg63(slv_reg63)

		
		
	);

	// Add user logic here

	// User logic ends

	endmodule
