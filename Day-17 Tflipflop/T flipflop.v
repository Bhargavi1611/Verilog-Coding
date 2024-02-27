`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.02.2024 12:11:53
// Design Name: 
// Module Name: T flipflop
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


module Tflipflop(q,clk,reset,t);
input clk,reset;
input t;
output reg q;
always @(posedge clk)
begin
if(!reset) q<=1'b0;
else begin

q<=~q;

end
end
endmodule
