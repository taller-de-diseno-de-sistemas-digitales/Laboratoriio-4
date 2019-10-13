module btn_sync_tb ();
reg clk = 0;
logic btn;
logic bounce;
sync_btn DUT (clk,btn,bounce);
initial begin
	#10 btn = 1'b0;
end
always #5 clk = ~clk;
endmodule 