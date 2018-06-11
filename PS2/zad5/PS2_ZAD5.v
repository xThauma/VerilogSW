module PS2_ZAD5(
	input [3:0] SW,
	input [1:0] KEY,
	output reg [3:0] LEDR);
	always @(*)
		case (KEY)
		    2'b00: 
			 begin
				LEDR[0] = SW[0];
				LEDR[1] = 0;
				LEDR[2] = 0;
				LEDR[3] = 0;
			 end
		    2'b01: 
			  begin
				LEDR[0] = 0;
				LEDR[1] = SW[1];
				LEDR[2] = 0;
				LEDR[3] = 0;
			 end

		    2'b10: 
			 begin
				LEDR[0] = 0;
				LEDR[1] = 0;
				LEDR[2] = SW[2];
				LEDR[3] = 0;
			 end
			 
		    2'b11:
			begin
				LEDR[0] = 0;
				LEDR[1] = 0;
				LEDR[2] = 0;
				LEDR[3] = SW[3];
			 end
		endcase
endmodule
