`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/30 11:43:47
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


module ACC( accin, accout, load, clk, reset );
    input[7:0] accin;
    input load, clk ,reset;
    output[7:0] accout;
    reg[7:0] accout;
    
    always @( posedge clk or negedge reset)
    begin
        if( reset == 1'b0)
            accout <= 8'b0000_0000;
        else if( load == 1'b0 )
            accout <= accout;
        else if( load == 1'b1 )
            accout <= accin;
        else
            accout <= 8'bxxxx_xxxx;
    end    
endmodule
