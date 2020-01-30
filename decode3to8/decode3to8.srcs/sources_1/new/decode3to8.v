`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/11 16:08:24
// Design Name: 
// Module Name: decode3to8
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


module decode3to8( din, dout );
    input[2:0] din;
    output[7:0] dout;
    reg[7:0] dout;
    
    always @(din)
    begin
        case(din)
            3'b000: dout = 8'b0000_0001;
            3'b001: dout = 8'b0000_0010;
            3'b010: dout = 8'b0000_0100;
            3'b011: dout = 8'b0000_1000;
            3'b100: dout = 8'b0001_0000;
            3'b101: dout = 8'b0010_0000;
            3'b110: dout = 8'b0100_0000;
            3'b111: dout = 8'b1000_0000;
            default: dout = 8'bxxxx_xxxx;
        endcase
    end
endmodule
