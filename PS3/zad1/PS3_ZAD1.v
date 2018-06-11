module PS3_ZAD1(
	input [7:0] SW,
	output [9:0] LEDR,
	output [0:6] HEX0, HEX1);

	assign LEDR[7:0] = SW[7:0];	
	
	decoder_hex_10 ex0(SW[7:4], HEX1[0:6], LEDR[9]);
	decoder_hex_10 ex1(SW[3:0], HEX0[0:6], LEDR[8]);
	
endmodule

module decoder_hex_10(
	input [3:0] SW,
	output reg [0:6] HEX0,
	output reg E);
	
	assign LEDR=SW;
	always @(*)
		if(SW>4'b1001) begin
		E=1;
		end
		
		else begin
		
		E=0;
		casex(SW)
			4'd0: HEX0=7'b0000001;
			4'd1: HEX0=7'b1001111;
			4'd2: HEX0=7'b0010010;
			4'd3: HEX0=7'b0000110;
			4'd4: HEX0=7'b1001100;
			4'd5: HEX0=7'b0100100;
			4'd6: HEX0=7'b0100000;
			4'd7: HEX0=7'b0001111;
			4'd8: HEX0=7'b0000000;
			4'd9: HEX0=7'b0000100;
			default: HEX0=7'b1111111;
		endcase
		end
endmodule
