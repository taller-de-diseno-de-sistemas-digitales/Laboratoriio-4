module square_selection(
	input selection_btn,
	output playX, playO
	);
	logic x = 1'b1;
	logic o = 1'b0;
	assign playX = x;
	assign playO = o;
	always@(posedge selection_btn)
	begin
		x <= ~x;
		o <= ~o;
	end
endmodule 