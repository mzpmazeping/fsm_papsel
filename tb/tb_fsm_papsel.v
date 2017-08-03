`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    tb_fsm_papsel 
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
///////////////////////////////////////////////////////////////////////////////////

module tb_fsm_papsel;

reg  					clk_200Mhz      ;
reg  					rst_n         ;

reg  [2:0]		m_in;
reg						m_in_vld;


wire  [2:0]		check;
wire					qout;


parameter  clk_200M_cycle = 2.5;
 
initial
begin
  clk_200Mhz = 1'b0;
  forever
  begin
    #clk_200M_cycle  clk_200Mhz = 1'b1;
    #clk_200M_cycle  clk_200Mhz = 1'b0;
  end
end

initial
begin
  rst_n = 1'b1;
  m_in	= 3'h0;
  m_in_vld = 1'b0;
  #100  rst_n = 1'b0 ;
  #200  rst_n = 1'b1 ;
  
 
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h2;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h5;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h4;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h5;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h4;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h5;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h4;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h2;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h2;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h5;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
    @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h2;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h2;
  	m_in_vld = 1'b1;
   
  end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h5;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end 
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end 
   @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
   
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h2;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h5;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h2;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h1;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h2;
  	m_in_vld = 1'b1;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  @(posedge clk_200Mhz)
   begin
   	m_in	= 3'h0;
  	m_in_vld = 1'b0;
   
   end
  
  
end

fsm_papsel			u_fsm_papsel(
	.clk(clk_200Mhz),
	.rstn(rst_n),
	.m_in(m_in),
	.m_in_vld(m_in_vld),
	.qout(qout),
	.check(check)
);

// result checker
  reg[3:0]		qout_cnt;
  
  reg				result_err;
  
  always@(posedge clk_200Mhz)		
  begin
  	if(!rst_n)
  		qout_cnt <= 4'h0;
  	else if (qout)
  		qout_cnt <= qout_cnt + 1'b1;
  end		  
  
  always@(*)
  begin
  	if(qout)
  	begin
  		case(qout_cnt)
  			4'h0:begin
  				if(check == 3'h0)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h1:begin
  				if(check == 3'h3)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h2:begin
  				if(check == 3'h0)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h3:begin
  				if(check == 3'h0)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h4:begin
  				if(check == 3'h0)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h5:begin
  				if(check == 3'h1)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h6:begin
  				if(check == 3'h1)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h7:begin
  				if(check == 3'h2)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h8:begin
  				if(check == 3'h4)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'h9:begin
  				if(check == 3'h1)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'hA:begin
  				if(check == 3'h0)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  			4'hB:begin
  				if(check == 3'h1)
  					result_err = 1'b0;
  				else
  					result_err = 1'b1;
  			end
  		
  		endcase
  	end
  	else
  	begin
  		result_err = 1'b0;
  	end
  end
endmodule






	    
    






    
