module vga_controller(
	input clk, 
	output Hsynq,
	output Vsynq,
	output Vga_Clock,
	output Vga_Sync,
	output Vga_Blank,
	output [15:0] H_Count_Value, 
	output [15:0] V_Count_Value
);
	wire enable_V_Counter;
	
	horizontal_counter VGA_Horiz (clk, enable_V_Counter, H_Count_Value);
	vertical_counter VGA_Verti (clk, enable_V_Counter, V_Count_Value);
	assign Hsynq = (H_Count_Value >= 656 && H_Count_Value < 752 ) ? 1'b0 : 1'b1;
	assign Vsynq = (V_Count_Value >= 490 && V_Count_Value < 492) ? 1'b0 : 1'b1;
	assign Vga_Clock = clk;
	assign Vga_Sync = 1'b1;
	assign Vga_Blank = (H_Count_Value < 640 && V_Count_Value < 480 ) ? 1'b1 : 1'b0;

endmodule 