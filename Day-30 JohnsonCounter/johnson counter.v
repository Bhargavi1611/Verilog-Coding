`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 18:35:43
// Design Name: 
// Module Name: johnson counter
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


module johnsoncounter(
input clk,
input reset,
output reg [3:0] out

    );
    reg [3:0] counter;
    always @ (posedge clk or negedge reset)
    begin
    if(!reset) begin
    counter<=4'b0001;
    end
    else begin
    counter<={counter[2:0],~counter[3]};
    end
    end
    always @ * 
    begin
     out=counter;
     end
endmodule
