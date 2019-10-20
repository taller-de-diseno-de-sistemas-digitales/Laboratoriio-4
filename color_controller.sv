module color_controller(
	input clk,
	input rst,
	input [15:0] Xpos,
	input [15:0] Ypos,
	input [15:0] selected_square_startX,
	input [15:0] selected_square_endX,
	input [9:0] selected_square_startY,
	input [9:0] selected_square_endY,
	input [1:0] who,
	input [8:0] winner_play,
	input [1:0] pos1,
	input [1:0] pos2,
	input [1:0] pos3,
	input [1:0] pos4,
	input [1:0] pos5,
	input [1:0] pos6,
	input [1:0] pos7,
	input [1:0] pos8,
	input [1:0] pos9,
	output logic [3:0] Red,
	output logic [3:0] Green,
	output logic [3:0] Blue
	);
	
	
	logic [9:0] inicioHX1,inicioHX2,inicioHX3,inicioHX4,inicioHX5,inicioHX6,inicioHX7,inicioHX8,inicioHX9;
	logic [9:0] inicioVX1,inicioVX2,inicioVX3,inicioVX4,inicioVX5,inicioVX6,inicioVX7,inicioVX8,inicioVX9;
	logic [9:0] inicioHO1,inicioHO2,inicioHO3,inicioHO4,inicioHO5,inicioHO6,inicioHO7,inicioHO8,inicioHO9; 
	logic [9:0] inicioVO1,inicioVO2,inicioVO3,inicioVO4,inicioVO5,inicioVO6,inicioVO7,inicioVO8,inicioVO9;
	logic [3:0] rsX1,gsX1,bsX1,rsO1,gsO1,bsO1;
	logic [3:0] rsX2,gsX2,bsX2,rsO2,gsO2,bsO2;
	logic [3:0] rsX3,gsX3,bsX3,rsO3,gsO3,bsO3;
	logic [3:0] rsX4,gsX4,bsX4,rsO4,gsO4,bsO4;
	logic [3:0] rsX5,gsX5,bsX5,rsO5,gsO5,bsO5;
	logic [3:0] rsX6,gsX6,bsX6,rsO6,gsO6,bsO6;
	logic [3:0] rsX7,gsX7,bsX7,rsO7,gsO7,bsO7;
	logic [3:0] rsX8,gsX8,bsX8,rsO8,gsO8,bsO8;
	logic [3:0] rsX9,gsX9,bsX9,rsO9,gsO9,bsO9;
	logic enableX1 = 1'b0;
	logic enableO1 = 1'b0;
	logic enableX2 = 1'b0;
	logic enableO2 = 1'b0;
	logic enableX3 = 1'b0;
	logic enableO3 = 1'b0;
	logic enableX4 = 1'b0;
	logic enableO4 = 1'b0;
	logic enableX5 = 1'b0;
	logic enableO5 = 1'b0;
	logic enableX6 = 1'b0;
	logic enableO6 = 1'b0;
	logic enableX7 = 1'b0;
	logic enableO7 = 1'b0;
	logic enableX8 = 1'b0;
	logic enableO8 = 1'b0;
	logic enableX9 = 1'b0;
	logic enableO9 = 1'b0;
	logic visibleX1, visibleO1;
	logic visibleX2, visibleO2;
	logic visibleX3, visibleO3;
	logic visibleX4, visibleO4;
	logic visibleX5, visibleO5;
	logic visibleX6, visibleO6;
	logic visibleX7, visibleO7;
	logic visibleX8, visibleO8;
	logic visibleX9, visibleO9;
	
	assign inicioHX1 = 75;
	assign inicioVX1 = 75;
	assign inicioHO1 = 75;
	assign inicioVO1 = 75;
	
	assign inicioHX2 = 288;
	assign inicioVX2 = 75;
	assign inicioHO2 = 288;
	assign inicioVO2 = 75;
	
	assign inicioHX3 = 431;
	assign inicioVX3 = 75;
	assign inicioHO3 = 431;
	assign inicioVO3 = 75;
	
	assign inicioHX4 = 75;
	assign inicioVX4 = 235;
	assign inicioHO4 = 75;
	assign inicioVO4 = 235;
	
	assign inicioHX5 = 288;
	assign inicioVX5 = 235;
	assign inicioHO5 = 288;
	assign inicioVO5 = 235;
	
	assign inicioHX6 = 431;
	assign inicioVX6 = 235;
	assign inicioHO6 = 431;
	assign inicioVO6 = 235;
	
	assign inicioHX7 = 75;
	assign inicioVX7 = 395;
	assign inicioHO7 = 75;
	assign inicioVO7 = 395;
	
	assign inicioHX8 = 288;
	assign inicioVX8 = 395;
	assign inicioHO8 = 288;
	assign inicioVO8 = 395;
	
	assign inicioHX9 = 431;
	assign inicioVX9 = 395;
	assign inicioHO9 = 431;
	assign inicioVO9 = 395;
	
	sprite_top spriteX1 (clk,inicioHX1,inicioVX1,Xpos,Ypos,enableX1,rsX1,gsX1,bsX1,visibleX1);
	sprite_top2 spriteO1 (clk,inicioHO1,inicioVO1,Xpos,Ypos,enableO1,rsO1,gsO1,bsO1,visibleO1);
	sprite_top spriteX2 (clk,inicioHX2,inicioVX2,Xpos,Ypos,enableX2,rsX2,gsX2,bsX2,visibleX2);
	sprite_top2 spriteO2 (clk,inicioHO2,inicioVO2,Xpos,Ypos,enableO2,rsO2,gsO2,bsO2,visibleO2);
	sprite_top spriteX3 (clk,inicioHX3,inicioVX3,Xpos,Ypos,enableX3,rsX3,gsX3,bsX3,visibleX3);
	sprite_top2 spriteO3 (clk,inicioHO3,inicioVO3,Xpos,Ypos,enableO3,rsO3,gsO3,bsO3,visibleO3);
	sprite_top spriteX4 (clk,inicioHX4,inicioVX4,Xpos,Ypos,enableX4,rsX4,gsX4,bsX4,visibleX4);
	sprite_top2 spriteO4 (clk,inicioHO4,inicioVO4,Xpos,Ypos,enableO4,rsO4,gsO4,bsO4,visibleO4);
	sprite_top spriteX5 (clk,inicioHX5,inicioVX5,Xpos,Ypos,enableX5,rsX5,gsX5,bsX5,visibleX5);
	sprite_top2 spriteO5 (clk,inicioHO5,inicioVO5,Xpos,Ypos,enableO5,rsO5,gsO5,bsO5,visibleO5);
	sprite_top spriteX6 (clk,inicioHX6,inicioVX6,Xpos,Ypos,enableX6,rsX6,gsX6,bsX6,visibleX6);
	sprite_top2 spriteO6 (clk,inicioHO6,inicioVO6,Xpos,Ypos,enableO6,rsO6,gsO6,bsO6,visibleO6);
	sprite_top spriteX7 (clk,inicioHX7,inicioVX7,Xpos,Ypos,enableX7,rsX7,gsX7,bsX7,visibleX7);
	sprite_top2 spriteO7 (clk,inicioHO7,inicioVO7,Xpos,Ypos,enableO7,rsO7,gsO7,bsO7,visibleO7);
	sprite_top spriteX8 (clk,inicioHX8,inicioVX8,Xpos,Ypos,enableX8,rsX8,gsX8,bsX8,visibleX8);
	sprite_top2 spriteO8 (clk,inicioHO8,inicioVO8,Xpos,Ypos,enableO8,rsO8,gsO8,bsO8,visibleO8);
	sprite_top spriteX9 (clk,inicioHX9,inicioVX9,Xpos,Ypos,enableX9,rsX9,gsX19,bsX9,visibleX9);
	sprite_top2 spriteO9 (clk,inicioHO9,inicioVO9,Xpos,Ypos,enableO9,rsO9,gsO9,bsO9,visibleO9);
	always@(posedge clk)
	begin
		if(rst)begin
			 enableX1 <= 1'b0;
		    enableO1 <= 1'b0;
			 enableX2 <= 1'b0;
			 enableO2 <= 1'b0;
			 enableX3 <= 1'b0;
			 enableO3 <= 1'b0;
			 enableX4 <= 1'b0;
			 enableO4 <= 1'b0;
			 enableX5 <= 1'b0;
			 enableO5 <= 1'b0;
			 enableX6 <= 1'b0;
			 enableO6 <= 1'b0;
			 enableX7 <= 1'b0;
			 enableO7 <= 1'b0;
			 enableX8 <= 1'b0;
			 enableO8 <= 1'b0;
			 enableX9 <= 1'b0;
			 enableO9 <= 1'b0;
		end
		else if(Ypos == 160 || Ypos == 320 || Xpos == 213 || Xpos == 426)
			begin
					Red <= 4'b000;
					Green <= 4'b000;
					Blue <= 4'b000;
			end
		else if(visibleX1)
		begin
			Red <= rsX1;
			Green <= gsX1;
			Blue <= bsX1;
		end
		else if(visibleO1)
		begin
			Red <= rsO1;
			Green <= gsO1;
			Blue <= bsO1;
		end
		else if(visibleX2)
		begin
			Red <= rsX2;
			Green <= gsX2;
			Blue <= bsX2;
		end
		else if(visibleO2)
		begin
			Red <= rsO2;
			Green <= gsO2;
			Blue <= bsO2;
		end
		else if(visibleX3)
		begin
			Red <= rsX3;
			Green <= gsX3;
			Blue <= bsX3;
		end
		else if(visibleO3)
		begin
			Red <= rsO3;
			Green <= gsO3;
			Blue <= bsO3;
		end
		else if(visibleX4)
		begin
			Red <= rsX4;
			Green <= gsX4;
			Blue <= bsX4;
		end
		else if(visibleO4)
		begin
			Red <= rsO4;
			Green <= gsO4;
			Blue <= bsO4;
		end
		else if(visibleX5)
		begin
			Red <= rsX5;
			Green <= gsX5;
			Blue <= bsX5;
		end
		else if(visibleO5)
		begin
			Red <= rsO5;
			Green <= gsO5;
			Blue <= bsO5;
		end
		else if(visibleX6)
		begin
			Red <= rsX6;
			Green <= gsX6;
			Blue <= bsX6;
		end
		else if(visibleO6)
		begin
			Red <= rsO6;
			Green <= gsO6;
			Blue <= bsO6;
		end
		else if(visibleX7)
		begin
			Red <= rsX7;
			Green <= gsX7;
			Blue <= bsX7;
		end
		else if(visibleO7)
		begin
			Red <= rsO7;
			Green <= gsO7;
			Blue <= bsO7;
		end
		else if(visibleX8)
		begin
			Red <= rsX8;
			Green <= gsX8;
			Blue <= bsX8;
		end
		else if(visibleO8)
		begin
			Red <= rsO8;
			Green <= gsO8;
			Blue <= bsO8;
		end
		else if(visibleX9)
		begin
			Red <= rsX9;
			Green <= gsX9;
			Blue <= bsX9;
		end
		else if(visibleO9)
		begin
			Red <= rsO9;
			Green <= gsO9;
			Blue <= bsO9;
		end
		
		else if((Xpos >= selected_square_startX) && (Xpos < selected_square_endX) && (Ypos > selected_square_startY)  && (Ypos < selected_square_endY) && ~(visibleX1 || visibleO1 || visibleX2 || visibleO2 || visibleX3 || visibleO3 || visibleX4 || visibleO4 || visibleX5 || visibleO5 || visibleX6 || visibleO6 || visibleX7 || visibleO7 || visibleX8 || visibleO8 || visibleX9 || visibleO9))
		begin
			if(who==2'b00)
			begin
			Red <= 4'b0010;
			Green <= 4'b0010;
			Blue <= 4'b0010;
			end
			else
			begin
			Red <= 4'b0001;
			Green <= 4'b0001;
			Blue <= 4'b0001;
			end
		end	
		//Pos1
		else if(Xpos >= 0 && Xpos < 213 && Ypos > 0 && Ypos < 160 && ~(visibleX1 || visibleO1))
		begin
			if(winner_play[0])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos1 == 2'b10)
			begin
				enableO1 <= 1'b1;
			end
		else if(pos1 == 2'b01)
			begin
				enableX1 <= 1'b1;
			end
		end
		//Pos2
		else if(Xpos > 213 && Xpos < 426 && Ypos > 0 && Ypos < 160 && ~(visibleX2 || visibleO2))
		begin
			if(winner_play[1])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos2 == 2'b10)
			begin
				enableO2 <= 1'b1;
			end
		else if(pos2 == 2'b01)
			begin
				enableX2 <= 1'b1;
			end
		end
		//Pos3
		else if(Xpos > 426 && Xpos < 640 && Ypos > 0 && Ypos < 160 && ~(visibleX3 || visibleO3))
		begin
			if(winner_play[2])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos3 == 2'b10)
			begin
				enableO3 <= 1'b1;
			end
		else if(pos3 == 2'b01)
			begin
				enableX3 <= 1'b1;
			end
		end
		//Pos4
		else if(Xpos >= 0 && Xpos < 213 && Ypos > 160 && Ypos < 320 && ~(visibleX4 || visibleO4))
		begin
			if(winner_play[3])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos4 == 2'b10)
			begin
				enableO4 <= 1'b1;
			end
		else if(pos4 == 2'b01)
			begin
				enableX4 <= 1'b1;
			end
		end
		//Pos5
		else if(Xpos > 213 && Xpos < 426 && Ypos > 160 && Ypos < 320 && ~(visibleX5 || visibleO5))
		begin
			if(winner_play[4])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos5 == 2'b10)
			begin
				enableO5 <= 1'b1;
			end
		else if(pos5 == 2'b01)
			begin
				enableX5 <= 1'b1;
			end
		end
		//pos6
		else if(Xpos > 426 && Xpos < 640 && Ypos > 160 && Ypos < 320 && ~(visibleX6 || visibleO6))
		begin
			if(winner_play[5])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos6 == 2'b10)
			begin
				enableO6 <= 1'b1;
			end
		else if(pos6 == 2'b01)
			begin
				enableX6 <= 1'b1;
			end
		end
		//Pos7
		else if(Xpos >= 0 && Xpos < 213 && Ypos > 320 && Ypos < 480 && ~(visibleX7 || visibleO7))
		begin
			if(winner_play[6])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos7 == 2'b10)
			begin
				enableO7 <= 1'b1;
			end
		else if(pos7 == 2'b01)
			begin
				enableX7 <= 1'b1;
			end
		end
		//Pos8
		else if(Xpos > 213 && Xpos < 426 && Ypos > 320 && Ypos < 480 && ~(visibleX8 || visibleO8))
		begin
			if(winner_play[7])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos8 == 2'b10)
			begin
				enableO8 <= 1'b1;
			end
		else if(pos8 == 2'b01)
			begin
				enableX8 <= 1'b1;
			end
		end
		//Pos9
		else if(Xpos > 426 && Xpos < 640 && Ypos > 320 && Ypos < 480 && ~(visibleX9 || visibleO9))
			if(winner_play[8])
			begin
				Red <= 4'b0100;
				Green <= 4'b0100;
				Blue <= 4'b0100;
			end
			else
			begin
				Red <= 4'b0001;
				Green <= 4'b0001;
				Blue <= 4'b0001;
			end
		   if(pos9 == 2'b10)
			begin
				enableO9 <= 1'b1;
			end
		else if(pos9 == 2'b01)
			begin
				enableX9 <= 1'b1;
			end
	end
	
endmodule 