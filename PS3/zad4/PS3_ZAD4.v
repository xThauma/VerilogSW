module bcd_translate
	(input [3:0] A,
	output reg B,
	output reg [0:6] C);
	
	always @(*)
		case (A)
		    4'b0000:begin
				C= 7'b0000001;
				B=0;
			 end
		    4'b0001:begin 
				C= 7'b1001111;
				B=0;
			 end
		    4'b0010:begin
				 C= 7'b0010010;
				B=0;
			 end
		    4'b0011:begin
				 C= 7'b0000110;
				B=0;
			 end
			 4'b0100:begin
				 C= 7'b1001100;
				B=0;
			 end
			 4'b0101:begin
				 C= 7'b0100100;
				B=0;
			 end
			 4'b0110:begin
				 C= 7'b0100000;
				B=0;
			 end
			 4'b0111:begin
				 C= 7'b0001111;
				B=0;
			 end
			 4'b1000:begin
				 C= 7'b0000000;
				B=0;
			 end
			 4'b1001:begin
				 C= 7'b0000100;
				B=0;
			 end
			 
			 4'b1010:begin
				 C= 7'b1111111;
				B=1;
			 end
			 4'b1011: begin
				 C= 7'b1111111;
				B=1;
			 end
			 4'b1100: begin
				 C= 7'b1111111;
				B=1;
			 end
			 4'b1101: begin
				 C= 7'b1111111;
				B=1;
			 end
			 4'b1110: begin
				 C= 7'b1111111;
				B=1;
			 end
			 4'b1111: begin
				 C= 7'b1111111;
				B=1;
			 end
		endcase
	
endmodule

module PS3_ZAD4
	(input [8:0] SW,
	output reg [9:0] LEDR,
	output [0:6] HEX0,HEX1,HEX3,HEX5);

	reg [7:0] adder;
	wire temp1,temp2,er1,er2;
	
	bcd_translate i1(SW[3:0],er1,HEX3);
	bcd_translate i2(SW[7:4],er2,HEX5);
	
 
	assign result = adder[3:0];
	assign cout = adder[7:4];

	always @(*)
	begin
		LEDR= SW;
		if (er1 || er2)
			LEDR[9] = 1;
		else 
		begin
			adder = SW[3:0] + SW[7:4] + SW[8];
			if (adder > 9) 
				adder = adder + 6;
		end
	end

bcd_translate res(adder[3:0],temp1,HEX0);
bcd_translate nextdigit(adder[7:4],temp2,HEX1);
	
endmodule
