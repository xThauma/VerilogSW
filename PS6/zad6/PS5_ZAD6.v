module FSM_user_coding(
    input w,clk,aclr,
    output reg z);
 
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
 
if (!w) Y_D = B;
 
else Y_D = F;
 
B:
 
if (!w) Y_D = C;
 
else Y_D = F;
 
C:
 
if (!w) Y_D = D;
 
else Y_D = F;
 
D:
 
if (!w) Y_D = E;
 
else Y_D = F;
 
E:
 
if (!w) Y_D = E;
 
else Y_D = F;
 
F:
 
if (!w) Y_D = B;
 
else Y_D = G;
 
G:
 
if (!w) Y_D = B;
 
else Y_D = H;
 
H:
 
if (!w) Y_D = B;
 
else Y_D = I;
 
I:
 
if (!w) Y_D = B;
 
else Y_D = I;
 
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
 
 
module PS5_ZAD6(
input [1:0] SW,
input [1:0] KEY,
output [9:0] LEDR);
 
FSM_user_coding ex(SW[1],KEY[0],SW[0],LEDR[9]);
 
endmodule