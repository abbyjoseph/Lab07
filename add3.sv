`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/08/2020 11:42:32 AM
// Design Name: 
// Module Name: add3
// Project Name: Lab 7
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


module add3(
    input [3:0] num,
    output [3:0] modnum
    );
    
    reg [3:0] num, modnum;
    
    always @*
        begin
            if (num > 4'b0100)
                modnum = num + 4'b0011;
            else 
                modnum = num;
        end
    
    
endmodule
