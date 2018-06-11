module PS1_ZAD15(
input [9:0] SW,
output [9:0] LEDR);
wire [2:0] C;
adder_1_bit ex0(SW[0],SW[4],SW[9],LEDR[0],C[0]);
adder_1_bit ex1(SW[1],SW[5],C[0],LEDR[1],C[1]);
adder_1_bit ex2(SW[2],SW[6],C[1],LEDR[2],C[2]);
adder_1_bit ex3(SW[3],SW[7],C[2],LEDR[3],LEDR[9]);
endmodule

module adder_1_bit(
input a,b,cin,
output s,cout);
wire x,y,z;
xor (x,a,b);
xor (s,x,cin);
and (y,x,cin);
and (z,a,b);
or (cout,y,z);
endmodule
