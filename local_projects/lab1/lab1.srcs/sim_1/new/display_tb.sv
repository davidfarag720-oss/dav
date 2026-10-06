`timescale 1ns / 1ns


module display_tb(
    );
    logic [19:0] result;
    logic [3:0]numberBits [3:0];
    logic [6:0]displayBits [3:0];
    
    displayEncoder DUT1 (.result(result), .numberBits(numberBits));
    
    sevenSegDigit DUT2 (.digit(numberBits[0]), .displayBits(displayBits[0]));
    sevenSegDigit DUT3 (.digit(numberBits[1]), .displayBits(displayBits[1]));
    sevenSegDigit DUT4 (.digit(numberBits[2]), .displayBits(displayBits[2]));
    sevenSegDigit DUT5 (.digit(numberBits[3]), .displayBits(displayBits[3]));
    
    initial begin
    result = 20'd2345;
    #20;
    result = 20'd6789;
    #20;
    $finish;
    end
    initial begin 
        $monitor("Time=%0t result=%d displayBits = %p",    
                  $time, result, displayBits);
    end 
    
    
endmodule
