`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 16:08:04
// Design Name: 
// Module Name: ringcounter_tb
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


module ringcounter_tb;
reg clk,reset;
wire [3:0] out;
ringcounter dut(clk,reset,out);
always #5 clk=~clk;
initial begin
reset=1;
clk=0;
#20;
reset=0;
$monitor("counter=%0b",out);
#50;
$finish;
end
endmodule
