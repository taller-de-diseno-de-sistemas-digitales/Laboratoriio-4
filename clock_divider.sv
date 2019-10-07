module clock_divider (
	input logic clk,
	output reg divided_clk = 0
	);
	
	logic[2:0] counter=3'd0;

	always@ (posedge clk)
	begin
		if(counter == 1)begin
			divided_clk <= 1'b1;
			counter <= 0;
		end
		else begin
			divided_clk <= 1'b0;
			counter <= counter + 1;
		end
	end

endmodule 