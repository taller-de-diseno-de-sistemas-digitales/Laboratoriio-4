`timescale 1ns/1ps 
module clock_divider_tb ();
logic clk = 0;
logic divided_clk;

clock_divider dut (.clk(clk),
.divided_clk(divided_clk)
);

	
always  #5 clk = ~clk;

endmodule 