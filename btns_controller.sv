module btns_controller ( 
	input Clk,
	input rst,
	input Btn,
	input SelBtn,
	output [15:0] selected_square_startX,
	output [15:0] selected_square_endX,
	output [9:0] selected_square_startY,
	output [9:0] selected_square_endY
);

	logic press_btn;
	logic press_rst;
	logic [3:0] selected_square;
	assign press_btn = Btn;
	assign press_rst = rst;
	
	btn_selector btn (press_btn,press_rst,selected_square);
	
	always_ff@(posedge Clk)
	begin
		case(selected_square)
			4'd0: begin
			selected_square_startX <= 0;
			selected_square_endX <= 213;
			selected_square_startY <= 0;
			selected_square_endY <= 160;
			end
			
			4'd1: begin
			selected_square_startX <= 0;
			selected_square_endX <= 213;
			selected_square_startY <= 160;
			selected_square_endY <= 320;
			end
			
			4'd2: begin
			selected_square_startX <= 0;
			selected_square_endX <= 213;
			selected_square_startY <= 320;
			selected_square_endY <= 480;
			end
			
			4'd3: begin
			selected_square_startX <= 213;
			selected_square_endX <= 426;
			selected_square_startY <= 0;
			selected_square_endY <= 160;
			end
			
			4'd4: begin
			selected_square_startX <= 213;
			selected_square_endX <= 426;
			selected_square_startY <= 160;
			selected_square_endY <= 320;
			end
			
			4'd5: begin
			selected_square_startX <= 213;
			selected_square_endX <= 426;
			selected_square_startY <= 320;
			selected_square_endY <= 480;
			end
			
			4'd6: begin
			selected_square_startX <= 426;
			selected_square_endX <= 640;
			selected_square_startY <= 0;
			selected_square_endY <= 160;
			end
			
			4'd7: begin
			selected_square_startX <= 426;
			selected_square_endX <= 640;
			selected_square_startY <= 160;
			selected_square_endY <= 320;
			end
			
			4'd8: begin
			selected_square_startX <= 426;
			selected_square_endX <= 640;
			selected_square_startY <= 320;
			selected_square_endY <= 480;
			end
			
			default: begin
			selected_square_startX <= 0;
			selected_square_endX <= 213;
			selected_square_startY <= 0;
			selected_square_endY <= 160;
			end	
		endcase
	end

endmodule 