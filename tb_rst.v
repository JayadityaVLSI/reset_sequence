module tb_rst;

reg rst1,rst2,rst3;

initial begin
	rst1 = 1;
	rst2 = 1;
	rst3 = 1;
	// First reset sequence
	rst1 = 0;
        #15 rst1 = 1;
	// Second reset sequence
	#20 rst2 = 0;
        #13 rst2 = 1;
	//Third reset sequence
	#52 rst3 = 0;
	#100 rst3 = 1;
        #500 $finish;

end
endmodule
