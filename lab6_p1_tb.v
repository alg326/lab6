`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2024 01:23:32 PM
// Design Name: 
// Module Name: lab6_p1_tb
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


//module lab6_p1_tb();
//    reg r, s;
//    wire q, qbar;

//    lab6_p1 DUT(.S(s), .R(r), .Q(q), .Qbar(qbar));

//    initial begin
//        r=0; s=0;
//        #5 s=1;
//        #5 s=0;
//        #5 r=1;
//        #5 r=0; s=1;
//        #5 s=0; r=1;
//        #5 r=0;
//        #5 r=1; s=1;

//        #10 $finish;
//    end

//endmodule

module lab6_p1_tb();
    reg r, s, clk;   
    wire q, qbar;  

    
    lab6_p1 DUT(.S(s), .R(r), .clk(clk), .Q(q), .Qbar(qbar));


    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end


    initial begin

        r = 0; s = 0;


        #10 s = 1; r = 0;  
        #10 s = 0;         
        #10 r = 1;         
        #10 r = 0; s = 1;  
        #10 s = 0; r = 1;  
        #10 r = 0;         
        #10 r = 1; s = 1;  

        #20 $finish;       
    end

endmodule
