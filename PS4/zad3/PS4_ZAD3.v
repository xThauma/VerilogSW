module PS4_ZAD3(
	input [1:0] SW,
	output [0:0] LEDR);
	
	wire [1:0] firstLatchInput /* synthesis keep */;
	
	assign firstLatchInput[0] = SW[0];
	assign firstLatchInput[1] = ~SW[1];
	
	wire firstLatchOutput /* synthesis keep */;
	
	latch_D latchOne(firstLatchInput,firstLatchOutput);
	
	wire [1:0] secondLatchInput /* synthesis keep */;
	
	assign secondLatchInput[0] = firstLatchOutput;
	assign secondLatchInput[1] = SW[1];
	
	wire secondLatchOutput /* synthesis keep */;
	
	latch_D latchTwo(secondLatchInput,secondLatchOutput);
	
	assign LEDR[0] = secondLatchOutput;
	
endmodule

module latch_D(
	input [1:0] SW,
	output [0:0] LEDR);
	(* KEEP = "TRUE" *) wire S,R,S_g,R_g,Qa,Qb;
	assign S = SW[0];
	assign R = ~SW[0];
	assign S_g = ~(S & SW[1]);
	assign R_g = ~(R & SW[1]);
	assign Qa = ~(S_g & Qb);
	assign Qb = ~(R_g & Qa);
	assign LEDR[0] = Qa;
endmodule