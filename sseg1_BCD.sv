`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2020 02:45:41 PM
// Design Name: 
// Module Name: sseg1_BCD
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sseg1_BCD(
 
  input [15:0] sw,
  input clk,
  output [3:0] an,
  output dp,
  output [6:0] seg
    );
    
wire  [3:0] thousands, hundreds, tens_w, ones_w;   
    
BCD11b my_BCD11b(
    .B(sw[10:0]),
    .thousands(thousands),
    .hundreds(hundreds),
    .tens(tens_w),
    .ones(ones_w)
    );    
    
sseg1 my_sseg1(
    .A(tens_w),
    .B(ones_w),
    .sel(sw[15]),
    .seg_un(an[3:2]),
    .dp(dp),
    .seg(seg),
    .seg_L(an[1]),
    .seg_R(an[0])
    );
    
   

endmodule
