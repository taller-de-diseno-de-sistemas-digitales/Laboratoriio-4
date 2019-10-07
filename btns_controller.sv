module btns_controller ( 
	input Clk,
	input [15:0] Xpos,
	input [15:0] Ypos,
	input Btn_Up,
	input Btn_Down,
	input Btn_Left,
	input Btn_Right,
	output logic [3:0] Red,
	output logic [3:0] Green,
	output logic [3:0] Blue
);
	var [15:0] selected_square_startX = 213;
	var [15:0] selected_square_endX = 423;
	var [9:0] selected_square_startY = 160;
	var [9:0] selected_square_endY = 320;
	logic [15:0] size_squareX = 213; 
	logic [9:0] size_squareY = 160;
	logic press_up;
	logic press_down;
	logic press_left;
	logic press_right;
	assign press_up = ~Btn_Up;
	assign press_down = ~Btn_Down;
	assign press_left = ~Btn_Left;
	assign press_right = ~Btn_Right;
	
	always_ff@(posedge Clk)
	begin
		if(press_up)
			begin
				if(selected_square_startY != 0) 
					begin
						selected_square_startY <= selected_square_startY - size_squareY;
						selected_square_endY <= selected_square_endY - size_squareY;
					end
			end
		else if(press_down)
			begin
				if(selected_square_startY != 320)
					begin
						selected_square_startY <= selected_square_startY + size_squareY;
						selected_square_endY <= selected_square_endY + size_squareY;
					end
			end
		else if(press_left)
			begin
				if(selected_square_startX != 0)
					begin
						selected_square_startX <= selected_square_startX - size_squareX;
						selected_square_endX <= selected_square_endX - size_squareX;
					end
			end
		else if(press_right)
			begin
				if(selected_square_startX != 426)
					begin
						selected_square_startX <= selected_square_startX + size_squareX;
						selected_square_endX <= selected_square_endX + size_squareX;
					end
			end
	end
	
	always_comb
	begin
		if(Ypos == 160 || Ypos == 320 || Xpos == 213 || Xpos == 426)
			begin
				Red <= 3'b000;
				Green <= 3'b000;
				Blue <= 3'b000;
			end
		else if((Xpos > selected_square_startX && Xpos < selected_square_endX && Ypos > selected_square_startY && Ypos < selected_square_endY))
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