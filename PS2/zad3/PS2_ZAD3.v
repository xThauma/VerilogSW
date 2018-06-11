module PS2_ZAD3(
     input [1:0] SW,
     input [1:0] KEY,
     output [1:0] LEDR);
        assign LEDR = (~KEY[0] & SW[0]) | (KEY[0] & SW[1]);
endmodule
