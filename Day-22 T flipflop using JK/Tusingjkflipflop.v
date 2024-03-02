`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2024 13:24:48
// Design Name: 
// Module Name: Tusingjkflipflop
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

module t_using_jk_flipflop(
    output reg q,
    input clk,
    input reset,
    input t
);
reg j, k;
always @(posedge clk or negedge reset) begin
    if (!reset) 
        q <= 1'b0;
    else
     begin
        j <= q ^ t;
        k <= ~t;
        q <= j & q | ~k & ~q;
    end
end

endmodule
