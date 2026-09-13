// Testbench for Traffic Light Controller
module tb_traffic_light;
    reg clk, rst;
    wire [2:0] north, south, east, west;
    
    // Instantiate DUT
    traffic_light uut(clk, rst, north, south, east, west);
    
    // Clock generation - 10ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    // Reset and simulation
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_traffic_light);
        rst = 1; #10;
        rst = 0;
        #200;
        $finish;
    end
    
    initial begin
        $monitor("Time=%0t | North=%b South=%b East=%b West=%b", $time, north, south, east, west);
    end
endmodule
