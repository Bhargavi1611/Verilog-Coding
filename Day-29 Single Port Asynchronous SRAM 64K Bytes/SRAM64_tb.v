`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 10:01:58
// Design Name: 
// Module Name: SRAM64_tb
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


module SRAM64_tb;
reg [7:0] data_in;
reg clk;
reg [15:0] address;
reg write;
wire [7:0] data_out;
SRAM64k dut(clk,address,write,data_in,data_out);
always #5 clk=~clk;
initial begin
clk=0;
#5;
write=1;
data_in=8'hAA;
address=16'h0001;
#10;
write=0;
address=16'h0001;
#10;
$finish;
end
endmodule
