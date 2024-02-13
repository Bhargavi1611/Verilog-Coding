`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2024 11:59:07
// Design Name: 
// Module Name: barrelshift
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


module barrelshift(out,In,n,Lr);
output reg [7:0]out;
input [7:0] In;
input [2:0] n;
input Lr;
always @ *
begin 
if(Lr)
out=In<<n;
else
out=In>>n;
end//always @ *

endmodule



