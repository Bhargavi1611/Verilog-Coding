`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2024 16:17:18
// Design Name: 
// Module Name: dff_tb
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

module dff_tb;
reg d;
reg clk;
reg rst;
wire q;
dffb dut(q,d,clk,rst);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 rst=1;
 d <= 0;
 #100;
 rst=0;
 d <= 1;
 #100;
 d <= 0;
 #100;
 d <= 1;
end 
endmodule 
