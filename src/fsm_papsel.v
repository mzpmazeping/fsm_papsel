
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    fsm_papsel
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
///////////clk///////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module   fsm_papsel(
	clk,
	rstn,
	m_in,
	m_in_vld,
	qout,
	check
);

	input		 						clk, rstn;
	input	[2:0]					m_in;  		//投币的币值
	input								m_in_vld;   // “1’b1”表示投币有效，一个clk周期有效表示一次投币有效。
	output							qout;		  // “1’b1” 表示售出报纸
	output	[2:0]				check;		  // 找回零钱值	 	


	parameter IDLE=	8'b00000001;
	parameter M_1=	8'b00000010;	
	parameter M_2=	8'b00000100;	
	parameter M_3=	8'b00001000;	
	parameter M_4=	8'b00010000;	
	parameter M_5=	8'b00100000;	
	parameter CHECKOUT=8'b01000000;	

	reg qout;
	reg [2:0] check;
	reg [7:0] current_stat;
	reg [7:0] next_stat;
	reg [3:0] money;



	always @(posedge clk or negedge rstn) begin
		if (!rstn) begin
			current_stat=IDLE;
		end
		else  begin
			current_stat<=next_stat;
		end
	end

	always @(*)
	begin
		case(current_stat)
		IDLE:
			begin
				if(m_in_vld)
				begin
					if(m_in==3'h1)
						next_stat=M_1;
					else if(m_in==3'h2)
						next_stat=M_2;
					else if(m_in==3'h5)
						next_stat=M_5;
					else
						next_stat=IDLE;
				end
				else if(m_in_vld==1'b0)
				begin
					next_stat=IDLE;
				end
			end
		M_1:
			begin
				if(m_in_vld)
				begin
					if(m_in==3'h1)
						next_stat=M_2;
					else if(m_in==3'h2)
						next_stat=M_3;
					else if(m_in==3'h5)
					begin
						next_stat=CHECKOUT;
						money=4'h6;
					end
					else
						next_stat=M_1;
				end
				else if(m_in_vld==1'b0)
				begin
					next_stat=M_1;
				end
			end	
		M_2:
			begin
				if(m_in_vld)
				begin
					if(m_in==3'h1)
						next_stat=M_3;
					else if(m_in==3'h2)
						next_stat=M_4;
					else if(m_in==3'h5)
					begin
						next_stat=CHECKOUT;
						money=4'h7;
					end
					else
						next_stat=M_2;
				end
				else if(m_in_vld==1'b0)
				begin
					next_stat=M_2;
				end
			end		
		M_3:
			begin
				if(m_in_vld)
				begin
					if(m_in==3'h1)
						next_stat=M_4;
					else if(m_in==3'h2)
						next_stat=M_5;
					else if(m_in==3'h5)
					begin
						next_stat=CHECKOUT;
						money=4'h8;
					end
					else
						next_stat=M_3;
				end
				else if(m_in_vld==1'b0)
				begin
					next_stat=M_3;
				end
			end	
		M_4:
			begin
				if(m_in_vld)
				begin
					if(m_in==3'h1)
						next_stat=M_5;
					else if(m_in==3'h2)
						next_stat=CHECKOUT;
					else if(m_in==3'h5)
					begin
						next_stat=CHECKOUT;
						money=4'h9;
					end
					else
						next_stat=M_4;
				end
				else if(m_in_vld==1'b0)
				begin
					next_stat=M_4;
				end
			end		
		M_5:
			begin
				if(m_in_vld)
				begin
					if(m_in==3'h1)
					begin
						next_stat=CHECKOUT;
						money=4'h6;
					end
					else if(m_in==3'h2)
					begin
						next_stat=CHECKOUT;
						money=4'h7;
					end
					else if(m_in==3'h5)
					begin
						next_stat=CHECKOUT;
						money=4'h10;
					end
					else
						next_stat=IDLE;
				end
				else if(m_in_vld==1'b0)
				begin
					next_stat=IDLE;
				end
			end	
		CHECKOUT:
			begin
				if(m_in_vld)
				begin
					if(m_in==3'h1)
						next_stat=M_1;
					else if(m_in==3'h2)
						next_stat=M_2;
					else if(m_in==3'h5)
						next_stat=M_5;
					else
						next_stat=IDLE;
				end
				else if(m_in_vld==1'b0)
				begin
					next_stat=IDLE;
				end
			end	
		endcase
	end

	always @(*)
	begin
		case(current_stat)
			IDLE:
				begin
					qout=1'b0;
					check=3'h0;
				end

			M_1:
				begin
					qout=1'b0;
					check=3'h0;
				end

			M_2:
				begin
					qout=1'b0;
					check=3'h0;
				end

			M_3:
				begin
					qout=1'b0;
					check=3'h0;
				end
			M_4:
				begin
					qout=1'b0;
					check=3'h0;
				end
			M_5:
				begin
					qout=1'b1;
					check=3'h0;
				end
			CHECKOUT:
				begin
					qout=1'b1;
					check=money-4'h5;

				end
		endcase
	end

endmodule
