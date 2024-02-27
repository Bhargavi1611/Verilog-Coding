`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 12:28:14
// Design Name: 
// Module Name: Tflipflop_tb
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


module Tflipflop_tb;
reg clk=0,reset=1,t;
wire q;
Tflipflop dut(q,clk,reset,t);
initial begin
$monitor("q=%0d t=%0d",q,t);
t=1'b0;
#5;
t=1'b1;
#5;
t=1'b0;
#5;
t=1'b1;
#5;

reset=1'b0;
#20;
reset=1'b1;
#20;
t=1'b0;#5;
t=1'b1;
#5;
$finish;
end
always @(posedge clk)
begin
t=!t;
end
endmodule
