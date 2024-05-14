`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2024 09:43:26
// Design Name: 
// Module Name: moore_tb
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


module moore_tb;
    reg reset;
    reg clk;
    reg in;
    wire det;
    moore dut (
        .reset(reset),
        .clk(clk),
        .in(in),
        .det(det)
    );
    always begin
        #5 clk = ~clk;
    end
    initial begin
        reset = 1;
        in = 0;
        clk = 0;
        #10 reset = 0;
    end
    initial begin
        #20 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 
        
       $finish; 
    end

endmodule

