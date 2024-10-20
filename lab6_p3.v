`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:32:31 PM
// Design Name: 
// Module Name: lab6_p3
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


module lab6_p3 (
    input clk,       
    output Q1,
    output Q2,
    output Q3
);

    wire t1;
    wire t2;
    
    tff num_1(.clk(clk), .t(1'b1), .q(Q1));
    assign t1 = Q1;
    tff num_2(.clk(clk), .t(t1), .q(Q2));
    assign t2 = Q1&Q2;
    tff num_3(.clk(clk), .t(t2), .q(Q3));
    

endmodule


module tff(input clk, input t, output reg q);
    initial begin
        q=1'b0;
    end
    always @(posedge clk)begin
        if(t)
            q<=~q;
        else
            q<=q;
    end
endmodule
