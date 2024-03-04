`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 12:04:49
// Design Name: 
// Module Name: ripplecounter4_tb
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


module ripplecounter4_tb;
reg clk,reset;
wire [3:0] out;
ripplecounter4 dut(.out(out),.clk(clk),.reset(reset));
always #5 clk=~clk;
initial begin
reset<=0; clk<=0;
repeat(4) @ (posedge clk);
reset<=1;
repeat(15) @ (posedge clk);
$finish;
end
endmodule
