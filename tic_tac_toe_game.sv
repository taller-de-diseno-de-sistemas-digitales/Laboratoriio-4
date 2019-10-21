module tic_tac_toe_game(
	input clk,
	input rst,
	input playO,
	input playX,
	input [3:0] playerX_position,
	input [3:0] playerO_position,
	output wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,
	output wire [1:0]	who,
	output logic [8:0] winner_play,
	output logic illegal_move
	);
	
	logic win1;
	logic win2;
	logic win3;
	logic win4;
	logic win5;
	logic win6;
	logic win7;
	logic win8;
	
	wire [15:0] playerX_en;
	wire [15:0] playerO_en;
	wire win;
	wire X_play;
	wire O_play;
	wire no_space;
	
	positions_registers position_reg_unit(clk,rst,illegal_move,playerX_en[8:0],playerO_en[8:0],
	pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);
	
	winner_detector win_detect_unit(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,win1,win2,win3,win4,win5,win6,win7,win8,win,who);
	
	position_decoder pd1(playerX_position,X_play,playerX_en);
	
	position_decoder pd2(playerO_position,O_play,playerO_en);
	
	illegal_move_detector imd_unit(
   pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   playerX_en[8:0], playerO_en[8:0], 
   illegal_move
   );
	
	no_space_detector nsd_unit(
   pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   no_space
   );
	
	winner_play_module wpm(clk,who,win1,win2,win3,win4,win5,win6,win7,win8,winner_play);
	
	fsm tic_tac_toe_controller(
	clk,
	rst,
	playO,
	playX,
	illegal_move,
	no_space,
	win,
	X_play,
	O_play
	);
		
endmodule 