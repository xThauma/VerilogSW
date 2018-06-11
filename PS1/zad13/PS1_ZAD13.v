module PS1_ZAD13(
	input a,b,cin,
	output s,cout);
	wire x,y,z;
	
	xor (x,a,b);
	xor (s,x,cin);
	and (y,x,cin);
	and (z,a,b);
	or (cout,y,z);
endmodule