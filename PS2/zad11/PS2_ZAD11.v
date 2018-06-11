module PS2_ZAD11(
	input [9:7] SW,
	output reg [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);

	always @(*)
		case(SW)
			2'o0:
			begin
				HEX0=7'b0100011;		// o
				HEX1=7'b0000111;		// t
				HEX2=7'b1100011;		// u
				HEX3=7'b0100000;		// a
				HEX4=7'b1111111;		//spacja
				HEX5=7'b1111111;		//spacja
			end
			
			2'o1:
			begin
				HEX0=7'b1111111;		//spacja
				HEX1=7'b0100011;		// o
				HEX2=7'b0000111;		// t
				HEX3=7'b1100011;		// u
				HEX4=7'b0100000;		// a
				HEX5=7'b1111111;		//spacja
			end	
			2'o2:
			begin
				HEX0=7'b1111111;		//spacja
				HEX1=7'b1111111;		//spacja
				HEX2=7'b0100011;		// o
				HEX3=7'b0000111;		// t
				HEX4=7'b1100011;		// u
				HEX5=7'b0100000;		// a
			end	
			2'o3:
			begin
				HEX0=7'b0100000;		// a
				HEX1=7'b1111111;		//spacja
				HEX2=7'b1111111;		//spacja
				HEX3=7'b0100011;		// o
				HEX4=7'b0000111;		// t
				HEX5=7'b1100011;		// u
				
			end	
			2'o4:
			begin
				HEX0=7'b1100011;		// u
				HEX1=7'b0100000;		// a
				HEX2=7'b1111111;		//spacja
				HEX3=7'b1111111;		//spacja
				HEX4=7'b0100011;		// o
				HEX5=7'b0000111;		// t
				
			end	
			2'o5:
			begin
				HEX0=7'b0000111;		// t
				HEX1=7'b1100011;		// u
				HEX2=7'b0100000;		// a
				HEX3=7'b1111111;		//spacja
				HEX4=7'b1111111;		//spacja
				HEX5=7'b0100011;		// o

			end
			
			
			
		endcase
endmodule
