`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 12:24:22 PM
// Design Name: 
// Module Name: BCD6b
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


module BCD6b(
    input [5:0] B,
    output [3:0] tens,
    output [3:0] ones
    );
    
    wire [2:0] C1_out, C2_out;
 
    
    
    
add3 C1(
    .num({1'b0,B[5:3]}),
    .modnum({tens[2],C1_out})
    );
    
    
add3 C2(
    .num({C1_out,B[2]}),
    .modnum({tens[1],C2_out})
    );
    
add3 C3(
    .num({C2_out,B[1]}),
    .modnum({tens[0],ones[3:1]})
    );
    
assign tens[3] = 1'b0;
assign ones[0] = B[0];
    

    
    
    
endmodule
