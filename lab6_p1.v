`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:22:06 PM
// Design Name: 
// Module Name: lab6_p1
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


//module lab6_p1(S, R, Q, Qbar);

//input S, R;
//output Q, Qbar;

//nor #1 N1(Q, R, Qbar);
//nor #1 N2(Qbar, S, Q);

//endmodule

module lab6_p1(
    input wire S,    
    input wire R,    
    input wire clk,  
    output reg Q,    
    output wire Qbar 
);

    assign Qbar = ~Q;

    always @(posedge clk) begin
        if (S == 1 && R == 0)
            Q <= 1;
        else if (S == 0 && R == 1)
            Q <= 0;  
        else if (S == 0 && R == 0)
            Q <= Q;  
        else
            Q <= 1'bx; 
    end

endmodule
