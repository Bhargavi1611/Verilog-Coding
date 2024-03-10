`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 18:44:10
// Design Name: 
// Module Name: johnsoncounter_tb
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


module johnsoncounter_tb;
reg clk,reset;
wire [3:0] out;
johnsoncounter dut(clk,reset,out);
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
