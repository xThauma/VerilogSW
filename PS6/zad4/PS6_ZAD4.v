module FSM_user_coding(
	input w,clk,aclr,
	output reg z,
	output reg [8:0] y);

	reg [3:0] y_Q,Y_D;
// present state 
// next state
	localparam [3:0]
	A = 4'b0000,
// kody stanów
	B = 4'b0001,
	C = 4'b0010,
	D = 4'b0011,
	E = 4'b0100,
	F = 4'b0101,
	G = 4'b0110,
	H = 4'b0111,
	I = 4'b1000;

	always @(*)
	// defenicia przejść
	case (y_Q)
		A:

		if (!w) begin 
					Y_D = B;
					y[0]=1;
					y[1]=0;
					y[2]=0;
					y[3]=0;
					end
			
		else begin	
				Y_D = F;
				y[0]=1;
				y[2]=1;
				y[1]=0;
				y[3]=0;
					end

		B:

		if (!w) begin
					Y_D = C;
					y[0]=0;
					y[1]=1;
					y[2]=0;
					y[3]=0;
					end

		else begin
		Y_D = F;
				y[0]=1;
				y[2]=1;
				y[1]=0;
				y[3]=0;
					end
	
		C:

		if (!w) begin 
					Y_D = D;
					y[0]=1;
					y[1]=1;
					y[2]=0;
					y[3]=0;
					end

		else begin
		Y_D = F;
				y[0]=1;
				y[2]=1;
				y[1]=0;
				y[3]=0;
					end

		D:

		if (!w) begin 
					Y_D = E;
					y[0]=0;
					y[1]=0;
					y[2]=1;
					y[3]=0;
					end

		else begin
		Y_D = F;
				y[0]=1;
				y[2]=1;
				y[1]=0;
				y[3]=0;
					end

		E:

		if (!w) begin 
					Y_D = E;
					y[0]=0;
					y[1]=0;
					y[2]=1;
					y[3]=0;
					end

		else begin
		Y_D = F;
				y[0]=1;
				y[2]=1;
				y[1]=0;
				y[3]=0;
					end

		F:

		if (!w) begin 
					Y_D = B;
					y[0]=1;
					y[1]=0;
					y[2]=0;
					y[3]=0;
					end
			

		else begin 
					Y_D = G;
					y[0]=0;
					y[1]=1;
					y[2]=1;
					y[3]=0;
					end

		G:

		if (!w) begin 
					Y_D = B;
					y[0]=1;
					y[1]=0;
					y[2]=0;
					y[3]=0;
					end
			

		else begin 
					Y_D = H;
					y[0]=1;
					y[1]=1;
					y[2]=1;
					y[3]=0;
					end

		H:

		if (!w) begin 
					Y_D = B;
					y[0]=1;
					y[1]=0;
					y[2]=0;
					y[3]=0;
					end
			

		else begin 
					Y_D = I;
					y[0]=0;
					y[1]=0;
					y[2]=0;
					y[3]=1;
					end
			
		I:
		
		if (!w) begin 
					Y_D = B;
					y[0]=1;
					y[1]=0;
					y[2]=0;
					y[3]=0;
					end
			

		else begin 
					Y_D = I;
					y[0]=0;
					y[1]=0;
					y[2]=0;
					y[3]=1;
					end

		default:

		Y_D = 4'bxxxx;

endcase



always @(posedge clk,negedge aclr)

// defenicja pamęci

if (~aclr)

y_Q <= 0;

else

y_Q <= Y_D;

always @(*)

// defenicja wyjść

z = (y_Q == E) | (y_Q == I);

endmodule


module PS6_ZAD4(
input [1:0] SW,
input [1:0] KEY,
output [9:0] LEDR);

FSM_user_coding ex(SW[1],KEY[0],SW[0],LEDR[9],LEDR[8:0]);

endmodule