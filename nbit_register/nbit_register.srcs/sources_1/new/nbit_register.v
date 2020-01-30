`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/10/02 11:37:55
// Design Name: 
// Module Name: nbit_register
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


module nbit_register( din, dout, load, clk, reset );
    input[7:0] din;
    input load, clk ,reset;
    output[7:0] dout;
    reg[7:0] dout;
    
    always @( posedge clk or negedge reset)
    begin
        if( reset == 1'b0)
            dout <= 8'b0000_0000;
        else if( load == 1'b0 )
            dout <= dout;
        else if( load == 1'b1 )
            dout <= din;
        else
            dout <= 8'bxxxx_xxxx;
    end
endmodule
