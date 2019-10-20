module fsm (
	input clk, //clock deljuego
	input rst, //reinicia el juego
	input playO, //juegan las O's
	input playX, //juegasn los X's
	input illegal_move, //se detecta moviento ilegal 	
	input no_space, //se detecta que no hay mas espacios disponibles
	input win, //se detecta un ganador
	output reg X_play, //se habilita el turno de las X's	
	output reg O_play //se habilita el turno de los O's
	);
	
	//Estados
	parameter IDLE =  2'b00;
	parameter PLAYERX = 2'b01;
	parameter PLAYERO = 2'b10;
	parameter GAME_DONE = 2'b11;
	reg[1:0] current_state, next_state;
	
	//Estado actual
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			current_state <= IDLE;
		else
			current_state <= next_state;
	end
	
	//Estado siguiente
	always @(*)
	begin
		case(current_state)
		IDLE: begin
			if(rst == 1'b0 && playO == 1'b1)
				next_state <= PLAYERO;
			else	
				next_state <= IDLE;
			O_play <= 1'b0;
			X_play <= 1'b0;	 	
		end
		
		PLAYERO:begin
			O_play <= 1'b1;
			X_play <= 1'b0;
			if(illegal_move == 1'b0)
				next_state <= PLAYERX;
		else if(no_space == 1'b1 || win == 1'b1)
		begin
			next_state <= GAME_DONE;
		end
			else
				next_state <= IDLE;
		end
		
		PLAYERX: begin
		O_play <= 1'b0;
		if(playX == 1'b0) begin
			next_state = PLAYERX;
			X_play <= 1'b0;
		end
		else if(win == 1'b0 && no_space == 1'b0)
		begin
			next_state <= IDLE;
			X_play <= 1'b1;
		end
		else if(no_space == 1'b1 || win == 1'b1)
		begin
			next_state <= GAME_DONE;
			X_play <= 1'b1;
		end
		end
		
		GAME_DONE:begin
		O_play <= 1'b0;
		X_play <= 1'b0;
		if(rst == 1'b1)
			next_state <= IDLE;
		else
			next_state <= GAME_DONE;			
		end
		
		default: next_state <= IDLE;
		endcase		
	end	
endmodule 	