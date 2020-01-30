`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/05/15 09:21:05
// Design Name: 
// Module Name: ALU
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


module ALU( a, b, din, sel, q );
    input[7:0] a, b, din;
    input[2:0] sel;
    output[7:0] q;
    reg[7:0] q;
    always @(a or b or din or sel)
    begin
        case(sel)
            3'b000: q = a + b;
            3'b001: q = a - b;
            3'b010: q = a & b;
            3'b011: q = ~a;
            3'b100: q = din;
            default: q = q;
        endcase
    end
endmodule
