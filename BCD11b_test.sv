`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 01:44:29 PM
// Design Name: 
// Module Name: BCD11b_test
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


module BCD11b_test();

reg [10:0] B_t;
reg [3:0] thousands_t, hundreds_t, tens_t, ones_t;


BCD11b dut(
    .B(B_t),
    .thousands(thousands_t),
    .hundreds(hundreds_t),
    .tens(tens_t),
    .ones(ones_t)
    );
    
 initial begin
    B_t=11'b00000000000; #10
    B_t=11'b00000000001; #10
    B_t=11'b00001010101; #10
    B_t=11'b01001010101; #10
    B_t=11'b11111010101; #10
    $finish;
    end
    
endmodule
