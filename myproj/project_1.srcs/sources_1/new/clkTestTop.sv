`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2021 02:27:20 AM
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
                      input [N-1:0]  gth_refClkP_i,
                      input [N-1:0]  gth_refClkN_i,
                      input fclkp,fclkn
                     );

//signals
wire [N-1:0]refclk;
wire [N-1:0] refclkb;
wire [31:0] freqT [N-1:0];

//buffers instantitation
    genvar gi;
    generate 
      for (gi = 0; gi < N; gi++)
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
        freq_meter fm
                  (
                   .ref_clk(fclk),       // ref_freq input
                   .f(refclk),            //frequency to check 
                   .freq(freqT)         //output frequencies
                   );
    
// vio core instantiation
/*
vio_0 vio (
              .clk(fclk),              // input wire clk
              .probe_in0(freqT[0]),  // input wire [31 : 0] probe_in0
              .probe_in1(freqT[1]),  // input wire [31 : 0] probe_in1
              .probe_in2(freqT[2]),  // input wire [31 : 0] probe_in2
              .probe_in3(freqT[3])  // input wire [31 : 0] probe_in3
            );
*/

endmodule
