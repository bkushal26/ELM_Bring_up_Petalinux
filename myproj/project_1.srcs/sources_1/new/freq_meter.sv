`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2021 02:01:29 AM
// Design Name: 
// Module Name: freq_meter
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


module freq_meter #(parameter ref_f= 32'd250000000, parameter N = 2)
                 (
                 
                    input ref_clk, // ref_freq input
                    input [N-1:0] f, //frequency to check 
                    output reg [31:0] freq [N-1:0] //output frequencies
                    
                  );
       //signals  
      (*async_reg *) reg [31:0] cnt [N-1:0]; // for 2nd process, since used under generate statement
      reg [31:0] ref_cnt; //for 1st process, checking the ref count match with ref_f
       
      integer i;
      //process 1
      always @(posedge ref_clk)
      begin
          if (ref_cnt == ref_f) //check counts for 1 sec
            begin
                 for (i=0; i < N; i++) // if counts matched, set count to ouput port
                 begin  
                     freq[i]= cnt[i];
                        
                  end
                     ref_cnt= 32'h0;             
           end
            ref_cnt++; //if counts not matched, keep incrementing
      end
     //2nd process reset logic- till 1st process count is not crossed 4th bit, keep the reset for 2nd process ON
     wire cnt_rst = (ref_cnt[31:3] == 29'h0) ? 1'b1: 1'b0;
      //process2            
      genvar gi;
      generate 
        for (gi = 0; gi < N; gi++)
        begin
        
            always @(posedge f[gi])
            
                if (cnt_rst)
                
                cnt[gi]=32'h0; //reset array
     
                else 
                
                cnt[gi]++;
                
         end 
       endgenerate
endmodule
