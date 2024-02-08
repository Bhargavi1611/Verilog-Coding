`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 09:43:03
// Design Name: 
// Module Name: demux
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


module demux(S,I,Y);
input S,I;
output reg [1:0]Y;
always @ *
begin
if(S==1'b0)
  Y={1'b0,I};// output Y[1] is connected to I when S is 0
else
 Y={I,1'b0};//output Y[0] is connected to I when S is 1
end
endmodule
