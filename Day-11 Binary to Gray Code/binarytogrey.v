`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2024 14:39:24
// Design Name: 
// Module Name: binarytogrey
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


module binarytogrey(g,b);
output reg [2:0] g;
input [2:0] b;
always @ *
begin
g[2]=b[2];
g[1]=b[2]^b[1];
g[0]=b[1]^b[0];
end
endmodule
