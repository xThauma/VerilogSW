module bcd_translate
	(input [7:0] A,
	output reg [0:6] C,D);
	
	always @(*)
		case (A)
		    4'b0000:begin
				C= 7'b0000001;
				D= 7'b1111111;
			 end
		    4'b0001:begin 
				C= 7'b1001111;
				D= 7'b1111111;
			 end
		    4'b0010:begin
				C= 7'b0010010;
				D= 7'b1111111;
			 end
		    4'b0011:begin
				C= 7'b0000110;
				D= 7'b1111111;
			 end
			 4'b0100:begin
				C= 7'b1001100;
				D= 7'b1111111;
			 end
			 4'b0101:begin
				C= 7'b0100100;
				D= 7'b1111111;
			 end
			 4'b0110:begin
				C= 7'b0100000;
				D= 7'b1111111;
			 end
			 4'b0111:begin
				C= 7'b0001111;
				D= 7'b1111111;
			 end
			 4'b1000:begin
				C= 7'b0000000;
				D= 7'b1111111;
			 end
			 4'b1001:begin
				C= 7'b0000100;
				D= 7'b1111111;
			 end
			 4'b1010:begin
				C= 7'b0000001;
				D= 7'b1001111;
			 end
			 4'b1011: begin
				C= 7'b1001111;
				C= 7'b1001111;
			 end
			 4'b1100: begin
				C= 7'b0010010;
				D= 7'b1001111;
			 end
			 4'b1101: begin
				C= 7'b0000110;
				D= 7'b1001111;
			 end
			 4'b1110: begin
				C= 7'b1001100;
				D= 7'b1001111;
			 end
			 4'b1111: begin
				C= 7'b0100100;
				D= 7'b1001111;
			 end
		endcase
	
endmodule


module PS3_ZAD3
	(input [7:0] SW,
	output [0:6] HEX0,HEX1);

	bcd_translate jed(SW[7:0],HEX0,HEX1);
endmodule
