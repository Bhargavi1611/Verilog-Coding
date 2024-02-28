`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2024 14:42:16
// Design Name: 
// Module Name: 8_bittwinregister
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


module bittwinregister8(q1,q2,clk,rst,d1,d2);
input clk,rst;
input [7:0] d1;
input [7:0] d2;
output reg [7:0] q1;
output reg[7:0] q2;
always @(posedge clk)
if(rst)
begin
q1<=8'b00000000;q2<=8'b00000000;
end
else begin
q1<=d1;
q2<=d2; 
end

endmodule
