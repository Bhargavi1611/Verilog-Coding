`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2024 22:24:44
// Design Name: 
// Module Name: bitshiftregister5_tb
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



module bitshiftregister5_tb;
    reg SI, clk, rst;
    wire [4:0] SO;
    bitshiftregister5 dut (SO,clk,rst,SI);
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 1;
        #10;
        rst = 0;
    end
    initial begin
        SI = 1;
        #10;
        SI = 0;
        #10;
        SI = 1;
        #10;
        SI = 0;
        #10;
        $finish;
    end
endmodule
