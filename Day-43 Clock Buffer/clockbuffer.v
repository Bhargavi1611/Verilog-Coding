`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 09:57:50
// Design Name: 
// Module Name: clockbuffer
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

module clockbuffer (
    output reg clk_out,
    input clk_in
);

    always @ * begin
        clk_out <= clk_in;
end
endmodule

