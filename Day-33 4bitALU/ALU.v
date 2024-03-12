`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 10:45:14
// Design Name: 
// Module Name: ALU
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

module ALU (
   
input [3:0] a,[3:0] b,
input [2:0]opcode,
output reg [3:0] x);
always @ * 
begin
case(opcode)
 3'b000:x=a+b;//addition operation
 3'b001:x=a-b;//subtraction operation
 3'b010:x=a*b;
 3'b011:x=a/b;
 3'b100:x=a%b;
 3'b101:x=a^b;
 3'b110:x=~a;
 3'b111:x=a&&b;

 endcase
 end
 endmodule