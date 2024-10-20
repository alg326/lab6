`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:39:57 PM
// Design Name: 
// Module Name: lab6_p4_tb
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


module lab6_p4_tb();
 reg clock_in;
 wire clock_out;
 
 lab6_p4 uut (.clock_in(clock_in), .clock_out(clock_out));
 initial begin
  
 clock_in = 0;
    forever #10 clock_in = ~clock_in;
 end
      
endmodule