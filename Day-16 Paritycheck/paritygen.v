`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 14:06:23
// Design Name: 
// Module Name: paritygen
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


module paritygen(e,a);
input [2:0]a;
output reg e;
always @ *
begin
e=a[0]^a[1]^a[2];
end
endmodule

