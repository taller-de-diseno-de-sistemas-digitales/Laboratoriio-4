`timescale 1ns / 1ps
module tic_tac_toe_tb;
	//entradas
	reg clk;
	reg rst;
	logic playO;
	logic playX;
	logic [3:0] playerX_position;
	logic [3:0] playerO_position; 

	//salidas
	wire [1:0] pos1;
	wire [1:0] pos2;
	wire [1:0] pos3;
	wire [1:0] pos4;
	wire [1:0] pos5;
	wire [1:0] pos6;
	wire [1:0] pos7;
	wire [1:0] pos8;
	wire [1:0] pos9;
	wire [1:0] who;
	wire [8:0] winner_play;
	
	tic_tac_toe_game DUT(
		.clk(clk),
		.rst(rst),
		.playO(playO),
		.playX(playX),
		.playerX_position(playerX_position),
		.playerO_position(playerO_position),
		.pos1(pos1),
		.pos2(pos2),
		.pos3(pos3),
		.pos4(pos4),
		.pos5(pos5),
		.pos6(pos6),
		.pos7(pos7),
		.pos8(pos8),
		.pos9(pos9),
		.who(who),
		.winner_play(winner_play)
	); 
	
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end
	
	initial begin
	  // Initialize Inputs
	  playO = 1'b0;
	  rst = 1;
	  playerX_position = 0;
	  playerO_position = 0;
	  playX = 0;
	  #100;
	  rst = 0;
	  #100;
	  playO = 1'b1;
	  playX = 0;
	  playerX_position = 0;
	  playerO_position = 3;
	  #50;
	  playX = 1;
	  playO = 0;
	  #100;
	  rst = 0;
	  playO = 1;
	  playX = 0;
	  playerX_position = 2;
	  playerO_position = 4;
	  #50;
	  playX = 1;
	  playO = 0;  
	  #100;
	  rst = 0;
	  playO = 1;
	  playX = 0;
	  playerX_position = 6;
	  playerO_position = 5;
	  #50;
	  playX = 1;
	  playO = 0; 
	  #50;
	  playX = 0;
	  playO = 0;
	  #50;  
	 
	
	  rst = 1;
	  playO = 1'b0;
	  playerX_position = 0;
	  playerO_position = 0;
	  playX = 0;
	  #100;
	  rst = 0;
	  #100;
	  playO = 1'b1;
	  playX = 0;
	  playerX_position = 0;
	  playerO_position = 2;
	  #50;
	  playX = 1;
	  playO = 0;
	  #100;
	  rst = 0;
	  playO = 1;
	  playX = 0;
	  playerX_position = 3;
	  playerO_position = 5;
	  #50;
	  playX = 1;
	  playO = 0;  
	  #100;
	  rst = 0;
	  playO = 1;
	  playX = 0;
	  playerX_position = 6;
	  playerO_position = 8;
	  #50;
	  playX = 1;
	  playO = 0; 
	  #50
	  playX = 0;
	  playO = 0;  
	  
  end

	
	

endmodule 