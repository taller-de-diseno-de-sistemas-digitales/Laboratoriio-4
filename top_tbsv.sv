`timescale 1ns/1ps 
module top_tbsv();
reg clk = 0;
wire Hsynq;
wire Vsynq;
wire [7:0] Red;
wire [7:0] Green;
wire [7:0] Blue;

top DUT (clk, Hsynq, Vsynq, Red, Green, Blue);
always #5 clk = ~clk;

endmodule 