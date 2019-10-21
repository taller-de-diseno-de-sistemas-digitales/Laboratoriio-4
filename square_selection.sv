module square_selection(
	input selection_btn,
	input illegal_move,
	input rst,
	input [1:0] who,
	output playX, playO
	);
	logic x = 1'b1;
	logic o = 1'b0;
	assign playX = x;
	assign playO = o;
	always@(posedge selection_btn, posedge rst)
	begin
		if(rst)
		begin
			x <= 1'b1;
			o <= 1'b0;
		end
		else
		begin
			x <= ~x;
			o <= ~o;
		end

	end
endmodule 