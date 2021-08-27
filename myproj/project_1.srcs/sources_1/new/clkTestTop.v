`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2021 05:20:31 AM
// Design Name: 
// Module Name: clkTestTop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clkTestTop #(parameter N = 2)
                    (
                    
                    //need to add as per clocks
                      input [N-1:0]  gth_refClkP_i,
                      input [N-1:0]  gth_refClkN_i,
                      input fclkp,fclkn,
                      output reg fclk_p,
                      output reg [31:0] freq_O1,
                      output reg [31:0] freq_O2, 
                      output reg [31:0] freq_O3,
                      output reg [31:0] freq_O4,
                      output reg [31:0] freq_O5,
                      output reg [31:0] freq_O6,
                      output reg [31:0] freq_O7,
                      output reg [31:0] freq_O8,
                      output reg [31:0] freq_O9,
                      output reg [31:0] freq_1O,
                      output reg [31:0] freq_11,
                      output reg [31:0] freq_12
                                          
                     );

//signals
wire [N-1:0]refclk;
wire [N-1:0] refclkb;
wire [31:0] freqT [N-1:0];
//wire [31:0] freq01;
//wire [31:0] freq02;
//buffers instantitation
    genvar gi;
    generate 
      for (gi = 0; gi < N; gi=gi+1)
      begin
      
    IBUFDS_GTE4 #(
                  .REFCLK_EN_TX_PATH(1'b0),    // always to set to logic 0
                  .REFCLK_HROW_CK_SEL(2'b00),  // configures ODIV2 to O (without divide by 2)
                  .REFCLK_ICNTL_RX(2'b00)      // recommended from UG974
                    
                  ) 
    u_buf_gth_q2_clk0            //buffer1
                (
                .O            (),
                .ODIV2        (refclkb[gi]),
                .CEB          (1'b0),
                .I            (gth_refClkP_i[gi]),
                .IB           (gth_refClkN_i[gi])
    
                   );
    BUFG_GT BUFG_GT_inst                     //buffer2
            (
                .O       (refclk [gi]), // 1-bit output: Buffer
                .CE      (1'b1),        // 1-bit input: Buffer enable
                .CEMASK  (1'b0),        // 1-bit input: CE Mask
                .CLR     (1'b0),        // 1-bit input: Asynchronous clear
                .CLRMASK (1'b0),        // 1-bit input: CLR Mask
                .DIV     (3'b0),        // 3-bit input: Dynamic divide Value
                .I       (refclkb [gi]) // 1-bit input: Buffer
            );

      end
    endgenerate
    
    IBUFDS fclk_ibuf  //buffer3
                (
                    .I(fclkp), 
                    .IB(fclkn), 
                    .O(fclkb)
                 );
                 
     BUFG fclk_bufg  //buffer 4
                (
                    .I(fclkb), 
                    .O(fclk)
                  );
//freqMeter instantiation
        freqMeter fm
                  (
                   .ref_clk(fclk),       // ref_freq input
                   .f(refclk),            //frequency to check 
                   .freqM01(freqT[0]), //(freq01),
                   .freqM02(freqT[1]), //(freq02)         //output frequencies
                   
                   .freqM03(freqT[0]), //change index when n>2
                   .freqM04(freqT[1]),
                   .freqM05(freqT[0]),
                   .freqM06(freqT[1]),
                   .freqM07(freqT[0]),
                   .freqM08(freqT[1]),
                   .freqM09(freqT[0]),
                   .freqM10(freqT[1]),
                   .freqM11(freqT[0]),
                   .freqM12(freqT[1])
                   );
    
// vio core instantiation

//vio_0 vio (
//              .clk(fclk),              // input wire clk
//              .probe_in0(freqT[0]),  // input wire [31 : 0] probe_in0
//              .probe_in1(freqT[1]),  // input wire [31 : 0] probe_in1
//              .probe_in2(),  // input wire [31 : 0] probe_in2
//              .probe_in3()  // input wire [31 : 0] probe_in3
//            );
always @ ( freqT[0] or freqT[1]) 
begin
 fclk_p  = fclk;
 freq_O1 = freqT[0]; //freq01;           //assignment to output port of topmodule
 freq_O2 = freqT[1]; //freq02;           //assignment to output port of topmodule
 //replace RHS to particular clock output when more clocks are added (N>2)
 freq_O3 = freqT[0];      
 freq_O4 = freqT[1];
 freq_O5 = freqT[0];
 freq_O6 = freqT[1];
 freq_O7 = freqT[0];
 freq_O8 = freqT[1];
 freq_O9 = freqT[0];
 freq_1O = freqT[1];
 freq_11 = freqT[0];
 freq_12 = freqT[1];
 end

endmodule
