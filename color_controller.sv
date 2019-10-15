module color_controller(
	input clk,
	input [15:0] Xpos,
	input [15:0] Ypos,
	input [15:0] selected_square_startX,
	input [15:0] selected_square_endX,
	input [9:0] selected_square_startY,
	input [9:0] selected_square_endY,
	input [1:0] pos1,
	input [1:0] pos2,
	input [1:0] pos3,
	input [1:0] pos4,
	input [1:0] pos5,
	input [1:0] pos6,
	input [1:0] pos7,
	input [1:0] pos8,
	input [1:0] pos9,
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
		//Pos1
		else if(Xpos > 0 && Xpos < 213 && Ypos > 0 && Ypos < 160 )
		begin
			if(pos1 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos1 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		//Pos2
		else if(Xpos > 213 && Xpos < 426 && Ypos > 0 && Ypos < 160)
		begin
			if(pos2 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos2 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		//Pos3
		else if(Xpos > 426 && Xpos < 640 && Ypos > 0 && Ypos < 160)
		begin
			if(pos3 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos3 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		//Pos4
		else if(Xpos > 0 && Xpos < 213 && Ypos > 160 && Ypos < 320)
		begin
			if(pos4 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos4 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		//Pos5
		else if(Xpos > 213 && Xpos < 426 && Ypos > 160 && Ypos < 320)
		begin
			if(pos5 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos5 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		//pos6
		else if(Xpos > 426 && Xpos < 640 && Ypos > 160 && Ypos < 320)
		begin
			if(pos6 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos6 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		//Pos7
		else if(Xpos > 0 && Xpos < 213 && Ypos > 320 && Ypos < 480)
		begin
			if(pos7 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos7 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		//Pos8
		else if(Xpos > 213 && Xpos < 426 && Ypos > 320 && Ypos < 480)
		begin
			if(pos8 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos8 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		//Pos9
		else if(Xpos > 426 && Xpos < 640 && Ypos > 320 && Ypos < 480)
		begin
			if(pos9 == 2'b10)
			begin
				Red <= 3'b011;
				Green <= 3'b011;
				Blue <= 3'b011;
			end
			else if(pos9 == 2'b01)
			begin
				Red <= 3'b100;
				Green <= 3'b100;
				Blue <= 3'b100;
			end
			else begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
		end
		else
			begin
				Red <= 3'b001;
				Green <= 3'b001;
				Blue <= 3'b001;
			end
	end
	
endmodule 