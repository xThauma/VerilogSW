module PS3_ZAD2(
	input [7:0] SW,
	output [0:6] HEX0, HEX1);

	
	decoder_hex_16 ex0(SW[7:4], HEX1[0:6]);
	decoder_hex_16 ex1(SW[3:0], HEX0[0:6]);
	
endmodule
module decoder_hex_16(
	input [3:0] SW,
	output reg [0:6] HEX0);

	always @(*)
		
		
	
		casex(SW)
			0: HEX0=7'b0000001;
			1: HEX0=7'b1001111;
			2: HEX0=7'b0010010;
			3: HEX0=7'b0000110;
			4: HEX0=7'b1001100;
			5: HEX0=7'b0100100;
			6: HEX0=7'b0100000;
			7: HEX0=7'b0001111;
			8: HEX0=7'b0000000;
			9: HEX0=7'b0000100;
			
			10: HEX0=7'b0001000;//A
			11: HEX0=7'b1100000;//b
			12: HEX0=7'b0110001;//C
			13: HEX0=7'b1000010;//d
			14: HEX0=7'b0110000;//E
			15: HEX0=7'b0111000;//F
			
			default: HEX0=7'b1111111;
		endcase
endmodule
