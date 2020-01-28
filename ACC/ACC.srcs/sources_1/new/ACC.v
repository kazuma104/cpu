`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/15 00:43:22
// Design Name: 
// Module Name: ACC
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


module ACC( ACC, ACC_OUT, clock, reset );
    input clock, reset;
    input[7:0] ACC;
    output ACC_OUT;
    reg[7:0] ACC_OUT;
    
    always @( posedge clock or negedge reset )
    begin
        if( reset == 1'b0)
            ACC_OUT <= 8'b0000_0000;
        else
            ACC_OUT <= ACC ;
    end
    
endmodule
