`timescale 1ns/1ps 
module clock_divider_tb ();
reg clk = 0;
logic rst = 0;
logic divided_clk;

clock_divider DUT (
	.clk(clk),
	.divided_clk(divided_clk)
	);

	
always  #5 clk = ~clk;
endmodule 