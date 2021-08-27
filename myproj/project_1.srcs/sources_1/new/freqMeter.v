`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/27/2021 05:57:39 AM
// Design Name: 
// Module Name: freqMeter
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


module freqMeter #(parameter ref_f= 32'd250000000, parameter N = 2)
                 (
                 
                    input ref_clk,               // ref_freq input
                    input [N-1:0] f,            //frequency to check 
                    output reg [31:0] freqM01,
                    output reg [31:0] freqM02,  //output frequencies-need to add if N>2
                    output reg [31:0] freqM03,
                    output reg [31:0] freqM04,
                    output reg [31:0] freqM05,
                    output reg [31:0] freqM06,
                    output reg [31:0] freqM07, 
                    output reg [31:0] freqM08,
                    output reg [31:0] freqM09,
                    output reg [31:0] freqM10,
                    output reg [31:0] freqM11,
                    output reg [31:0] freqM12
                  );
       //signals  
      (*async_reg *) reg [31:0] cnt [N-1:0]; // for 2nd process, since used under generate statement
       reg [31:0] ref_cnt; //for 1st process, checking the ref count match with ref_f
       reg [31:0] freq [N-1:0];
       
      integer i;
      //process 1
      always @(posedge ref_clk)
      begin
              if (ref_cnt == ref_f) //check counts for 1 sec
                begin
                     for (i=0; i < N; i=i+1) // if counts matched, set count to ouput port
                     begin  
                         freq[i]= cnt[i];
                            
                      end
                         ref_cnt= 32'h0;             
               end
                ref_cnt=ref_cnt+1; //if counts not matched, keep incrementing
         end
        
     //2nd process reset logic- till 1st process count is not crossed 4th bit, keep the reset for 2nd process ON
     wire cnt_rst = (ref_cnt[31:3] == 29'h0) ? 1'b1: 1'b0;
      //process2            
      genvar gi;
      generate 
        for (gi = 0; gi < N; gi=gi+1)
        begin
        
            always @(posedge f[gi])
                  
              if (cnt_rst)
                    
                    cnt[gi]=32'h0; //reset array
         
                    else 
                    
                    cnt[gi]= cnt[gi]+1;
              end    
             
       endgenerate
       
       always @(freq[0],freq[1]) begin
           freqM01 = freq[0]; 
           freqM02 = freq[1];
           //modify RHS when N>2
           freqM03 = freq[0];
           freqM04 = freq[1];
           freqM05 = freq[0];
           freqM06 = freq[1];
           freqM07 = freq[0];
           freqM08 = freq[1];
           freqM09 = freq[0];
           freqM10 = freq[1];
           freqM11 = freq[0];
           freqM12 = freq[1];
            
      end
endmodule





