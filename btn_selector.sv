module btn_selector(
	input logic btn, rst,
	output logic[3:0] selected_square
	);
	logic[3:0] counter = 0;
	always @(posedge btn, posedge rst)begin
		if(rst) counter <= 0;
		else if (counter == 8) counter <= 0;
		else counter <= counter + 1;
	end
	assign selected_square = counter;
	
endmodule 