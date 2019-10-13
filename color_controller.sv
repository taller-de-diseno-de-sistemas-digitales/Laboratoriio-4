module color_controller(
	input clk,
	input [15:0] Xpos,
	input [15:0] Ypos,
	input [15:0] selected_square_startX,
	input [15:0] selected_square_endX,
	input [9:0] selected_square_startY,
	input [9:0] selected_square_endY,
	output logic [2:0] Red,
	output logic [2:0] Green,
	output logic [2:0] Blue
	);
	
	always@(posedge clk)
	begin
		if(Ypos == 160 || Ypos == 320 || Xpos == 213 || Xpos == 426)
			begin
				Red <= 3'b000;
				Green <= 3'b000;
				Blue <= 3'b000;
			end
		else if((Xpos > selected_square_startX && Xpos < selected_square_endX && Ypos > selected_square_startY  && Ypos < selected_square_endY ))
			begin
				Red <= 3'b010;
				Green <= 3'b010;
				Blue <= 3'b010;
			end
		else
			begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
	end
	
endmodule 