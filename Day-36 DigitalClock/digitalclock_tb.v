`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2024 20:02:13
// Design Name: 
// Module Name: digitalclock_tb
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


module digitalclock_tb;
reg clk,reset;
wire [5:0] seconds;
wire [5:0] minutes;
wire [4:0] hours;
digitalclock dut(.clk(clk),.reset(reset),.seconds(seconds),.minutes(minutes),.hours(hours));
initial clk=0;
always #50000000 clk=~clk;
initial begin
reset=1;
#100;
reset=0;
$finish;
end

endmodule
