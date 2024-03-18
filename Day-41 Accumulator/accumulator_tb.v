`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 10:35:22
// Design Name: 
// Module Name: accumulator_tb
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


module accumulator_tb;
reg clk,reset;
reg [3:0] d;
wire [7:0] q;
accumulator dut(clk,d,reset,q);
always #1 clk=~clk;
initial begin
$monitor("q=%0b",q);
clk=0;
reset=1;
d=4'b0;
#10;
reset=0;
d=4'b0011;
#10;
d=4'b1001;
#10;
d=4'b1111;
#10;
d=4'b1011;
#10;
$finish;
end
endmodule
