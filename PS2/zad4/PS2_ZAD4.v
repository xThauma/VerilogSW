module PS2_ZAD4
	(input [7:0] SW,
	input [1:0] KEY,
	output reg [7:0] LEDR);
	
	always @(*)
		if (!KEY[0]) 	LEDR[3:0] = SW[3:0];
		else	LEDR[3:0] = SW[7:4];	
endmodule
