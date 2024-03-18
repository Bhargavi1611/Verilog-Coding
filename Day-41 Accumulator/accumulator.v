`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2024 10:22:56
// Design Name: 
// Module Name: accumulator
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


module accumulator(clk,d,reset,q);
input clk,reset;
input [3:0] d;
output reg [7:0] q;
always @ (posedge clk or negedge reset) begin
if(reset)
q<=8'b0;
else
q<=q+d;
end
endmodule
