module counter_mod_M
	#(parameter M=11)
	(input clk,aclr,enable,
	output reg [N-1:0] Q);
	
	localparam N=clogb2(M-1);

	function integer clogb2(input [31:0] v);

	for (clogb2 = 0; v > 0; clogb2 = clogb2 + 1)
		v = v >> 1;
	endfunction

	always @(posedge clk, negedge aclr)
		if (!aclr)
			Q <= {N{1'b0}};
		else if (Q == M-1)
			Q <= {N{1'b0}};
		else if (enable)
			Q <= Q + 1'b1;
		else	
			Q <= Q;

endmodule

module counter_mod_10(
	input clk,aclr,enable,
	output [3:0] Q);

	counter_mod_M #(11) ex(clk,aclr,enable,Q);

endmodule

module lab5_part3a(
	input clk,aclr,enable,
	output [0:6] h);
	localparam sizeA=clogb2(50000000);
	function integer clogb2(input [31:0] v);
	
		for (clogb2 = 0; v > 0; clogb2 = clogb2 + 1)
			v = v >> 1;
	
	endfunction
	
	wire [sizeA-1:0] A;
	wire e_1_sec;
	wire [3:0] B;
	counter_mod_M #(50000000) ex0(clk,aclr,enable,A);
	assign e_1_sec = ~|A;
	counter_mod_M #(11) ex1(clk,aclr,e_1_sec,B);
	decoder_hex_10 ex(B,h);
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

module PS5_ZAD4(
	input CLOCK_50,
	input [1:0] SW,
	output [0:6] HEX0);

	lab5_part3a ex(CLOCK_50,SW[0],SW[1],HEX0);

endmodule
