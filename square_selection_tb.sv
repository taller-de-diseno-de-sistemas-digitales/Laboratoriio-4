module square_selection_tb();
	logic selection_btn;
	logic playX, playO;
	square_selection dut (.selection_btn(selection_btn), .playX(playX), .playO(playO));
	initial begin
		#10 selection_btn = 1;
		#10 selection_btn = 0;
		#10 selection_btn = 1;
		#10 selection_btn = 0;
		#10 selection_btn = 1;
		#10 selection_btn = 0;

	end
endmodule 