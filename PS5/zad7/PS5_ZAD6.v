module wordDisplayer(
    input [2:0] number,
    output reg [0:6] HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);
    always @(number)
        case (number)
            3'b000: begin
				HEX0=7'b1100010;		// o
				HEX1=7'b1110000;		// t
				HEX2=7'b1100011;		// u
				HEX3=7'b0000010;		// a
				HEX4=7'b1111111;		//spacja
				HEX5=7'b1111111;		//spacja
            end
            3'b001: begin
				HEX0=7'b1111111;		//spacja
				HEX1=7'b1100010;		// o
				HEX2=7'b1110000;		// t
				HEX3=7'b1100011;		// u
				HEX4=7'b0000010;		// a
				HEX5=7'b1111111;		//spacja
            end
            3'b010: begin
				HEX0=7'b1111111;		//spacja
				HEX1=7'b1111111;		//spacja
				HEX2=7'b1100010;		// o
				HEX3=7'b1110000;		// t
				HEX4=7'b1100011;		// u
				HEX5=7'b0000010;		// a
            end
            3'b011: begin
				HEX0=7'b0000010;		// a
				HEX1=7'b1111111;		//spacja
				HEX2=7'b1111111;		//spacja
				HEX3=7'b1100010;		// o
				HEX4=7'b1110000;		// t
				HEX5=7'b1100011;		// u
            end
            3'b100: begin
				HEX0=7'b1100011;		// u
				HEX1=7'b0000010;		// a
				HEX2=7'b1111111;		//spacja
				HEX3=7'b1111111;		//spacja
				HEX4=7'b1100010;		// o
				HEX5=7'b1110000;		// t
            end
            3'b101: begin
				HEX0=7'b1110000;		// t
				HEX1=7'b1100011;		// u
				HEX2=7'b0000010;		// a
				HEX3=7'b1111111;		//spacja
				HEX4=7'b1111111;		//spacja
				HEX5=7'b1100010;		// o
            end
            default: begin
                HEX0 = 7'b1111111;
                HEX1 = 7'b1111111;
                HEX2 = 7'b1111111;
                HEX3 = 7'b1111111;
                HEX4 = 7'b1111111;
                HEX5 = 7'b1111111;
            end
        endcase
endmodule
 
 
module counter(
	input right,
	input left,
	output reg[2:0] out);
	
		always @(posedge right or posedge left) begin
			if(left) begin
				if(out < 3'b101)
					out <= out + 1;
				else
					out <= 3'b0;
			end
			else if(right) begin
				if(out > 3'b0)
					out <= out - 1;
				else
					out <= 3'b101;
			end
			else begin
				;
			end
		end
endmodule
 
 
module PS5_ZAD6(
    input [2:0] KEY,
    output [0:6] HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);
	 
	wire [2:0] positionNumber;
	
	counter licz(~KEY[0],~KEY[2], positionNumber);
	
   wordDisplayer AUDI(positionNumber,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);
   
endmodule
