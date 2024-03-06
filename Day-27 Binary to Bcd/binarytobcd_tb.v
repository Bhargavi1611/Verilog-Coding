`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 10:51:40
// Design Name: 
// Module Name: binarytobcd_tb
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


module binarytobcd_tb;
reg [3:0] binary;
wire [7:0] bcd;
binarytobcd dut(bcd,binary);
initial begin
$monitor("binary=%0b bcd=%0b",binary,bcd);
binary=4'b0000;
#10;
binary=4'b0001;
#10;
binary=4'b0010;
#10;
binary=4'b0011;
#10;
binary=4'b1010;//invalid input(12)
$finish;
end
endmodule
