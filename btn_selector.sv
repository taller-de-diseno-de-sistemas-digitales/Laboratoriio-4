module btn_selector(
	input logic btn, rst,
	output logic[3:0] selected_square
	);
	
	always @(posedge btn, posedge rst)
		if(rst) selected_square <= 0;
		else if (selected_square == 9) selected_square <= 0;
		else selected_square <= selected_square + 1;
	
endmodule 