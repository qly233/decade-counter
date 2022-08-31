`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:14:28 12/11/2021
// Design Name:   shijinzhijishuqi
// Module Name:   D:/szdl/shijinzhijishuqi/test.v
// Project Name:  shijinzhijishuqi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shijinzhijishuqi
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg mr;
	reg en;
	reg clk;

	// Outputs
	wire [3:0] q;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	shijinzhijishuqi uut (
		.mr(mr), 
		.en(en), 
		.clk(clk), 
		.q(q), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		mr = 1;
		en = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      mr = 0;
		en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		mr = 0;
		en = 1;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here

	end
      always #20 begin clk = ~clk; end
endmodule

