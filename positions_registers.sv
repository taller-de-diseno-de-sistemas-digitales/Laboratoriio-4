module positions_registers(
	input clk,	//clock del juego
	input rst,	//reinicia el juego
	input illegal_move, //deshabilita la escritura cuando se detecta un movimiento ilegal
	input [8:0] PLX_en, //senal de habilitacion del jugador X
	input [8:0] PLO_en, //senal de habiltacion del jugador O
	output reg[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9 //posiciones del tablero	
); 
 //Posicion 1
	always @(posedge clk or posedge rst )
	begin
		if(rst)
			pos1 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos1 <= pos1; //mantiene la posicion previa
			else if(PLX_en[0] == 1'b1)
				pos1 <= 2'b10; //almacena datos del jugador x
			else if(PLO_en[0] == 1'b1)
				pos1 <= 2'b01; //almacena datos jugador O
			else 
				pos1 <= pos1;
		end
	end
	
//Posicion 2
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pos2 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos2 <= pos2;
			else if(PLX_en[1] == 1'b1)
				pos2 <= 2'b10;
			else if(PLO_en[1] == 1'b1)
				pos2 <= 2'b01;
			else
				pos2 <= pos2;
		end
	end

//Posicion 3
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pos3 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos3 <= pos3;
			else if(PLX_en[2] == 1'b1)
				pos3 <= 2'b10;
			else if(PLO_en[2] == 1'b1)
				pos3 <= 2'b01;
			else
				pos3 <= pos3;
		end
	end

//Posicion 4
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pos4 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos4 <= pos4;
			else if(PLX_en[3] == 1'b1)
				pos4 <= 2'b10;
			else if(PLO_en[3] == 1'b1)
				pos4 <= 2'b01;
			else
				pos4 <= pos4;
		end
	end
	
//Posicion 5
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pos5 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos5 <= pos5;
			else if(PLX_en[4] == 1'b1)
				pos5 <= 2'b10;
			else if(PLO_en[4] == 1'b1)
				pos5 <= 2'b01;
			else
				pos5 <= pos5;
		end
	end
	
//Posicion 6
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pos6 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos6 <= pos6;
			else if(PLX_en[5] == 1'b1)
				pos6 <= 2'b10;
			else if(PLO_en[5] == 1'b1)
				pos6 <= 2'b01;
			else
				pos6 <= pos6;
		end
	end
	
//Posicion 7
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pos7 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos7 <= pos7;
			else if(PLX_en[6] == 1'b1)
				pos7 <= 2'b10;
			else if(PLO_en[6] == 1'b1)
				pos7 <= 2'b01;
			else
				pos7 <= pos7;
		end
	end

	
//Posicion 8
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pos8 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos8 <= pos8;
			else if(PLX_en[7] == 1'b1)
				pos8 <= 2'b10;
			else if(PLO_en[7] == 1'b1)
				pos8 <= 2'b01;
			else
				pos8 <= pos8;
		end
	end
	
//Posicion 9
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			pos9 <= 2'b00;
		else begin
			if(illegal_move == 1'b1)
				pos9 <= pos9;
			else if(PLX_en[8] == 1'b1)
				pos9 <= 2'b10;
			else if(PLO_en[8] == 1'b1)
				pos9 <= 2'b01;
			else
				pos9 <= pos9;
		end
	end
endmodule 







































