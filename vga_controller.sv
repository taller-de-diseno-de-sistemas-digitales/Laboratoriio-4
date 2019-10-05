module vga_controller(
	input clk, 
	output Hsynq,
	output Vsynq,
	output Vga_Clock,
	output [15:0] H_Count_Value,
	output [15:0] V_Count_Value
);
	wire enable_V_Counter;
	
	horizontal_counter VGA_Horiz (clk, enable_V_Counter, H_Count_Value);
	vertical_counter VGA_Verti (clk, enable_V_Counter, V_Count_Value);

	assign Hsynq = (H_Count_Value < 96) ? 1'b1 : 1'b0;
	assign Vsynq = (V_Count_Value < 2) ? 1'b1 : 1'b0;
	assign Vga_Clock = clk;

endmodule 