`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:10 12/11/2021 
// Design Name: 
// Module Name:    shijinzhijishuqi 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module shijinzhijishuqi(mr,en,clk,q,co);
	input mr,en,clk;
	output reg co;
	output reg[3:0] q;
	always@(mr or en or clk)
	begin
		if(~mr)
		begin
			q = 4'b0000;
			co = 0;
		end
		else if(~en)
		begin
			q = q;
			co = co;
		end
		else if(clk)
		begin
			if(q==4'b0000)
			begin
				q = 4'b1001;
				co = 0;
			end
			else
			begin
				q = q - 4'b0001;
				if(q==4'b0000)
					co =1;
			end
		end
	end

endmodule
