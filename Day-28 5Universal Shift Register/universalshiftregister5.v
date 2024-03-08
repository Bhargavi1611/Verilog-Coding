`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 20:00:18
// Design Name: 
// Module Name: universalshiftregister5
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


module universalshiftregister5(PO,SO,PI,sel,clk,rst,SI);
	input [1:0] sel;
	input [4:0] PI;
	input  clk, rst,SI;
	output reg[4:0] PO; 
	output SO;
	
	always@(posedge clk)
	if (rst) 
		PO <= 5'd0;
	else begin case(sel)
	
			2'b00 : PO <= PO;
			2'b01 : PO <= {PO[3:0],SI};
			2'b10 : PO <= {SI,PO[4:1]};
			2'b11 : PO <= PI;  
			default : PO <= 0;
	
		endcase
		end
	assign SO = (sel == 2'b01) ? PO[4] : PO[0] ;

	
endmodule
