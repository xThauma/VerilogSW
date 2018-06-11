module PS2_ZAD8(
	input [9:0] SW,
	output [6:0] HEX0,
	output [9:0] LEDR);
	assign LEDR=SW;
	
	wire [1:0] mux;
	
	zad6 ex0(SW[7:0], SW[9:8], mux[1:0]);
	zad7 ex1(mux[1:0], HEX0[6:0]);
	

endmodule

module zad7(
	input [1:0] SW,
	output reg [6:0] HEX0);
	always @*
		case (SW)
			2'o0:
				HEX0 = 7'b0100000;
			2'o1:
				HEX0 = 7'b1100011;
			2'o2:
				HEX0 = 7'b0000111;
			2'o3:
				HEX0 = 7'b0100011;
		endcase
endmodule




module zad6(
	input [7:0] SW,
	input [1:0] KEY,
	output reg [1:0] LEDR);
	
	always @(*)
		case (KEY)
		    2'b00: LEDR = SW[1:0];
		    2'b01: LEDR = SW[3:2];
		    2'b10: LEDR = SW[5:4];
		    2'b11: LEDR = SW[7:6];
		endcase

endmodule
