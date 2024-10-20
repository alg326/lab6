`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:38:48 PM
// Design Name: 
// Module Name: lab6_p4
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


module lab6_p4(clock_in,clock_out);
input clock_in; 
output reg clock_out; 
reg[1:0] counter=2'd0;


initial begin
    clock_out = 1'b0;
end
always @(posedge clock_in)
begin
 clock_out <= counter[1];
 counter <= counter + 2'd1; 
end
endmodule
