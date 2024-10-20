`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:33:22 PM
// Design Name: 
// Module Name: lab6_p3_tb
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


module lab6_p3_tb();
    reg clk;        
    wire Q1, Q2, Q3;


    lab6_p3 DUT (
        .clk(clk),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3)
    );


    always #10 clk = ~clk;


    initial begin
        clk = 0;         
        #150 $finish;
    end
endmodule
