module decoder_2_to_hex (
        input [3:0] bin,
        output reg [6:0] H);
		  
        always @(bin)
			 case (bin)
				  0: H = 7'b1000000;
				  1: H = 7'b1111001;
				  2: H = 7'b0100100;
				  3: H = 7'b0110000;
				  4: H = 7'b0011001;
				  5: H = 7'b0010010;
				  6: H = 7'b0000010;
				  7: H = 7'b1111000;
				  8: H = 7'b0000000;
				  9: H = 7'b0010000;
				  default: H = 7'b1111111;
			 endcase
endmodule


module PS3_ZAD9 (
    input [8:0] SW,
	 output [5:0] LEDR,
	 output [6:0] HEX0, HEX1, HEX2);
	 
	
	reg [6:0] H0, H1, H2;
	always @(SW)
	begin
		H2 = SW / 100;
		H1 = (SW % 100) / 10;
		H0 = SW % 10;
	end
	
	decoder_2_to_hex h2(H2[3:0], HEX2);
	decoder_2_to_hex h1(H1[3:0], HEX1);
	decoder_2_to_hex h0(H0[3:0], HEX0);
	assign LEDR = SW;
 
endmodule
