`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2024 12:35:46
// Design Name: 
// Module Name: srflipflop
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


module srflipflop(q,qbar,clk,reset,s,r);
input s,r;
input clk,reset;
output reg q;
output qbar;
assign qbar=~q;
always@(posedge clk or negedge reset)
if(!reset) q<=0;
else begin
case({s,r})
2'b00:q<=q;//previous output
2'b01:q<=1'b0;//reset
2'b10:q<=1'b1;//set
2'b11:q<=1'bx;//invalid inputs 
endcase
end

endmodule
