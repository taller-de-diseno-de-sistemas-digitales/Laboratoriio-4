module sync_btn (
input clk,
input btn,
output logic bounce
);

reg enable_btn = 0;
reg [24:0] counter;

always_ff@(posedge clk)
begin
	if(~btn && enable_btn)begin
		bounce <= 1; 
		enable_btn <= ~enable_btn;
	end
	else
	begin
		counter <= counter+1;
		bounce <= 0;
		if(counter == 9375000)begin
			enable_btn <= ~enable_btn;
			counter <= 0;
		end
	end
end

endmodule  