module PS1_ZAD14 (input cin, a, b,		// opis port�w wej�ciowych
		      output s, cout);		// opis port�w wyj�ciowych

	assign {cout, s} = a+b+cin;
endmodule