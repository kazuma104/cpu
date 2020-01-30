`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/11 14:14:48
// Design Name: 
// Module Name: mux8
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


module mux8( sel, din0, din1, din2, din3, din4, din5,din6, din7, dout );
    input[7:0] din0,din1,din2,din3,din4,din5,din6,din7;
    input[2:0] sel;
    
    output[7:0] dout;
    reg[7:0] dout;
    
    always@(din0 or din1 or din2 or din3 or din4 or din5 or din6 or din7 or sel)
    begin
        case(sel)
            3'b000: dout = din0;
            3'b001: dout = din1;
            3'b010: dout = din2;
            3'b011: dout = din3;
            3'b100: dout = din4;
            3'b101: dout = din5;
            3'b110: dout = din6;
            3'b111: dout = din7;
            default: dout = 8'hxx;
        endcase
    end
endmodule
