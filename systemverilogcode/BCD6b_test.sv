`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/08/2020 12:41:32 PM
// Design Name: 
// Module Name: BCD6b_test
// Project Name: Lab 07
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


module BCD6b_test();

reg [5:0] B_t;
reg [3:0] tens_t, ones_t;

BCD6b dut(

    .B(B_t),
    .tens(tens_t),
    .ones(ones_t)
    );
    
integer i;

initial begin
    for (i=0; i<=5'b11111; i=i+1) begin
    B_t=i;
    #10;
    end
    $finish;
end





endmodule
