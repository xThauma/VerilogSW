module PS3_ZAD10 (
	input [9:0]SW,
	output reg [6:0] HEX3, HEX2, HEX1, HEX0);
	always @(*)
		begin
		integer temp;
		temp = SW;
		HEX0 = temp%10;
		temp = temp/10;
		HEX1 = temp%10;
		temp = temp/10;
		HEX2 = temp%10;
		temp = temp/10;
		HEX3 = temp%10;
		case(HEX0[3:0])
			4'b0000 : HEX0 = 7'b1000000;
			4'b0001 : HEX0 = 7'b1111001;
			4'b0010 : HEX0 = 7'b0100100;
			4'b0011 : HEX0 = 7'b0110000;
			4'b0100 : HEX0 = 7'b0011001;
			4'b0101 : HEX0 = 7'b0010010;
			4'b0110 : HEX0 = 7'b0000010;
			4'b0111 : HEX0 = 7'b1111000;
			4'b1000 : HEX0 = 7'b0000000;
			4'b1001 : HEX0 = 7'b0010000;
			default: HEX0 = 7'b1111111;
		endcase
		case(HEX1[3:0])
			4'b0000 : HEX1 = 7'b1000000;
			4'b0001 : HEX1 = 7'b1111001;
			4'b0010 : HEX1 = 7'b0100100;
			4'b0011 : HEX1 = 7'b0110000;
			4'b0100 : HEX1 = 7'b0011001;
			4'b0101 : HEX1 = 7'b0010010;
			4'b0110 : HEX1 = 7'b0000010;
			4'b0111 : HEX1 = 7'b1111000;
			4'b1000 : HEX1 = 7'b0000000;
			4'b1001 : HEX1 = 7'b0010000;
			default: HEX1 = 7'b1111111;
		endcase
		case(HEX2[3:0])
			4'b0000 : HEX2 = 7'b1000000;
			4'b0001 : HEX2 = 7'b1111001;
			4'b0010 : HEX2 = 7'b0100100;
			4'b0011 : HEX2 = 7'b0110000;
			4'b0100 : HEX2 = 7'b0011001;
			4'b0101 : HEX2 = 7'b0010010;
			4'b0110 : HEX2 = 7'b0000010;
			4'b0111 : HEX2 = 7'b1111000;
			4'b1000 : HEX2 = 7'b0000000;
			4'b1001 : HEX2 = 7'b0010000;
			default: HEX2 = 7'b1111111;
		endcase
		case(HEX3[3:0])
			4'b0000 : HEX3 = 7'b1000000;
			4'b0001 : HEX3 = 7'b1111001;
			4'b0010 : HEX3 = 7'b0100100;
			4'b0011 : HEX3 = 7'b0110000;
			4'b0100 : HEX3 = 7'b0011001;
			4'b0101 : HEX3 = 7'b0010010;
			4'b0110 : HEX3 = 7'b0000010;
			4'b0111 : HEX3 = 7'b1111000;
			4'b1000 : HEX3 = 7'b0000000;
			4'b1001 : HEX3 = 7'b0010000;
		default: HEX3 = 7'b1111111;
		endcase
	end
endmodule
