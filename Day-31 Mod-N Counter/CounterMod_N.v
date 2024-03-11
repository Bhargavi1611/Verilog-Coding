`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2024 10:48:19
// Design Name: 
// Module Name: CounterMod_N
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


module CounterMod_N
    #(
        parameter N = 10,
        parameter b = 4
    )
    (
        input reset,
        input clk,
        output reg [b-1:0] out
    );

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 0;
        end else begin
            if (out == N-1) begin
                out <= 0;
            end else begin
                out <= out + 1;
            end
        end
    end

endmodule

