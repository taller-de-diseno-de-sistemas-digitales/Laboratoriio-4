`timescale 1ns/1ps 
module top(
	input clk, 
	output Hsynq,
	output Vsynq,
	output Vga_Clock,
	output [7:0] Red,
	output [7:0] Green,
	output [7:0] Blue

	);	

	wire clk_25MHZ;
	wire [15:0] H_Count_Value;
	wire [15:0] V_Count_Value;
   clock_divider VGA_Clock_gen (clk,clk_25MHZ);
	vga_controller VGA (clk_25MHZ, Hsynq, Vsynq, Vga_Clock, H_Count_Value, V_Count_Value);

	 
	assign Red = (((H_Count_Value < 361 && H_Count_Value > 351 || H_Count_Value < 574 && H_Count_Value > 564) && V_Count_Value < 515 && V_Count_Value > 34)||(H_Count_Value < 784 && H_Count_Value > 143  && (V_Count_Value < 199 && V_Count_Value > 189 || V_Count_Value < 359 && V_Count_Value > 349 ))) ? 8'd255 : 8'd0;
	assign Green = (((H_Count_Value < 361 && H_Count_Value > 351 || H_Count_Value < 574 && H_Count_Value > 564) && V_Count_Value < 515 && V_Count_Value > 34)||(H_Count_Value < 784 && H_Count_Value > 143  && (V_Count_Value < 199 && V_Count_Value > 189 || V_Count_Value < 359 && V_Count_Value > 349 ))) ? 8'd255: 8'd0;
	assign Blue = (((H_Count_Value < 361 && H_Count_Value > 351 || H_Count_Value < 574 && H_Count_Value > 564) && V_Count_Value < 515 && V_Count_Value > 34)||(H_Count_Value < 784 && H_Count_Value > 143  && (V_Count_Value < 199 && V_Count_Value > 189 || V_Count_Value < 359 && V_Count_Value > 349 ))) ? 8'd255 : 8'd0;
	//assign Red = (H_Count_Value == 356  && V_Count_Value == 194 ) ? 8'd0 : 8'd255;
	//assign Green = (H_Count_Value == 356  && V_Count_Value == 194) ? 8'd0: 8'd255;
	//assign Blue = (H_Count_Value == 356  && V_Count_Value == 194) ? 8'd0 : 8'd255;
	
	
endmodule 