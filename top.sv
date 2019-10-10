module top(
	input clk,
	input Btn_UP,
	input Btn_Down,
	input Btn_Left,
	input Btn_Right,
	output Hsynq,
	output Vsynq,
	output Vga_Clock,
	output Vga_Sync,
	output Vga_Blank,
	output logic [7:0] Red,
	output logic [7:0] Green,
	output logic [7:0] Blue
	);	

	wire clk_25MHZ;
	wire clk_oneSecond;
	wire [15:0] H_Count_Value;
	wire [15:0] V_Count_Value;
	logic [2:0] color_Red;
	logic [2:0] color_Green;
	logic [2:0] color_Blue;
   clock_divider VGA_Clock_gen (clk,clk_25MHZ);
	clk_oneSecond(clk_25MHZ, clk_oneSecond);
	vga_controller VGA (clk_25MHZ, Hsynq, Vsynq, Vga_Clock, Vga_Sync, Vga_Blank, H_Count_Value, V_Count_Value);
	btns_controller bnts (clk_oneSecond, H_Count_Value, V_Count_Value, Btn_UP, Btn_Down, Btn_Left, Btn_Right, color_Red, color_Green, color_Blue);
	//assign Green = ((H_Count_Value == 213 || H_Count_Value == 426) || (V_Count_Value == 160 || V_Count_Value == 320)) ? 8'b00000000 : 8'b11111111;
	//assign Blue = ((H_Count_Value == 213 || H_Count_Value == 426) || (V_Count_Value == 160 || V_Count_Value == 320)) ? 8'b00000000 : 8'b11111111;
	//assign Red = ((H_Count_Value == 213 || H_Count_Value == 426) || (V_Count_Value == 160 || V_Count_Value == 320)) ? 8'b00000000 : 8'b11111111;
	deco_red decoR (color_Red, Red);
	deco_green decoG (color_Green, Green);
	deco_blue decoB (color_Blue, Blue);
endmodule 