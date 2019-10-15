module top(
	input clk,
	input rst,
	input Btn,
	input SelBtn,
	output Hsynq,
	output Vsynq,
	output Vga_Clock,
	output Vga_Sync,
	output Vga_Blank,
	output logic [7:0] Red,
	output logic [7:0] Green,
	output logic [7:0] Blue
	);	
	
	logic Btnsync;
	logic rstsync;
	logic SelBtnsync;
	wire clk_25MHZ;
	wire clk_oneSecond;
	wire [15:0] H_Count_Value;
	wire [15:0] V_Count_Value;
	logic [2:0] color_Red;
	logic [2:0] color_Green;
	logic [2:0] color_Blue;
	logic [15:0] startX, endX;
	logic [9:0] startY, endY;
	wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
	wire [1:0]	who;
	wire playx,playO;
	wire [3:0] position;
	
   clock_divider VGA_Clock_gen (clk,clk_25MHZ);
	clk_oneSecond(clk_25MHZ, clk_oneSecond);
	vga_controller VGA (clk_25MHZ, Hsynq, Vsynq, Vga_Clock, Vga_Sync, Vga_Blank, H_Count_Value, V_Count_Value);
	sync_btn btn (clk_25MHZ,Btn,Btnsync);
	sync_btn rstbtn (clk_25MHZ,rst,rstsync);
	sync_btn selbtn (clk_25MHZ,SelBtn,SelBtnsync);
	btns_controller bnts (clk_25MHZ, rstsync, Btnsync, SelBtnsync, startX, endX, startY, endY, playX, playO, position);
	tic_tac_toe_game game (clk,rstsync,playO,playX,position,positon,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,who);
	color_controller colorctrl (clk_25MHZ,H_Count_Value, V_Count_Value, startX, endX, startY, endY, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, color_Red, color_Green, color_Blue);
	deco_red decoR (color_Red, Red);
	deco_green decoG (color_Green, Green);
	deco_blue decoB (color_Blue, Blue);
endmodule 