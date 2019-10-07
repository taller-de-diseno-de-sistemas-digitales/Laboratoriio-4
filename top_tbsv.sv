`timescale 1ns/1ps 
module top_tbsv();
reg clk = 0;
logic Btn_UP;
logic Btn_Down;
logic Btn_Left;
logic Btn_Right;
logic Hsynq;
logic Vsynq;
logic [7:0] Red;
logic [7:0] Green;
logic [7:0] Blue;

top DUT (clk, Btn_UP, Btn_Down, Btn_Left, Btn_Right, Hsynq, Vsynq, Red, Green, Blue);
always #5 clk = ~clk;
initial begin
Btn_UP = 0; Btn_Down = 0; Btn_Left = 0; Btn_Right = 0;
end

endmodule 