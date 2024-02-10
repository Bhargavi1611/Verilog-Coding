`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2024 13:43:49
// Design Name: 
// Module Name: fourbitcomparator_tb
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


module fourbitcomparator_tb;
reg [3:0] a,b;//2-bits of inputs
wire D,E,F;
fourbitcomparator dut(D,E,F,a,b);
initial begin
$monitor("a=%0b b=%0b D=%0b E=%0b F=%0b",a,b,D,E,F);
  a = 4'b0000; b = 4'b0000; #10;
  a = 4'b0000; b = 4'b0001; #10;
  a = 4'b0001; b = 4'b0000; #10;
  a = 4'b0001; b = 4'b0001; #10;//we can add more testcases
end
endmodule

