`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 14:43:47
// Design Name: 
// Module Name: binarytogrey_tb
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


module binarytogrey_tb;
reg [2:0]b;
wire [2:0]g;
binarytogrey dut(g,b);
initial begin
$monitor("b=%0b g=%0b",b,g);
b=3'b000;#10;
b=3'b001;#10;
b=3'b010;#10;
b=3'b011;#10;
b=3'b100;#10;
b=3'b101;#10;
b=3'b110;#10;
b=3'b111;#10;
end
 
endmodule
