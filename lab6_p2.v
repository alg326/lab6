`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:28:11 PM
// Design Name: 
// Module Name: lab6_p2
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


//module lab6_p2 (
//    input d,
//    input rstn,
//    input clk,
//    output reg q
//);

//always @ (posedge clk)
//    if(!rstn)
//        q <= 0;
//    else
//        q <= d;

//endmodule

module lab6_p2 (
    input d,
    input rstn,
    input clk,
    output reg q
);

always @ (posedge clk or negedge rstn)
    if(!rstn)
        q <= 0;
    else
        q <= d;

endmodule
