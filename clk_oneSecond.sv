module clk_oneSecond (
	input clk,
	output clk_oneSecond
);

logic[24:0] counter=25'd0;

	always@ (posedge clk)
	begin
		if(counter == 5859375)begin
			clk_oneSecond <= 1'b1;
			counter <= 0;
		end
		else begin
			clk_oneSecond <= 1'b0;
			counter <= counter + 1;
		end
	end

endmodule 