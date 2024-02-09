`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2024 22:51:28
// Design Name: 
// Module Name: demux1_4
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

module demux1_4(Y,S,I);
    input I;
    input [1:0] S;
    output reg [3:0] Y;
    always @(*)
    begin
        case(S)
        2'b00:Y=4'b0001;
        2'b01:Y=4'b0010;
        2'b10:Y=4'b0100;
        2'b11:Y=4'b1000;   
        endcase
    end
endmodule
