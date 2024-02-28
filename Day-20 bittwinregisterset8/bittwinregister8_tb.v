`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2024 14:49:05
// Design Name: 
// Module Name: bittwinregister8_tb
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


module bittwinregister8_tb;
reg clk,rst;
reg [7:0]d1;
reg [7:0] d2;
wire [7:0]q1;
wire [7:0] q2;
bittwinregister8 dut(.q1(q1),.q2(q2),.clk(clk),.rst(rst),.d1(d1),.d2(d2));
initial begin
clk=0;rst=1;
d1=8'b10101010;
d2=8'b01010101;
#10;
rst=0;
#100;
$finish;
end
always #5 clk=~clk;
endmodule
