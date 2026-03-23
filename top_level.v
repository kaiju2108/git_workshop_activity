module top_level (
	/* Add your inputs here */
	
	// Clock
		input wire CLOCK_50,
	// Keys
		input wire [0:0]KEY,
	// Leds
		output wire [9:0] LEDR,
	// Switches
		input wire [9:0] SW
);

    nios_system u0 (
        .clk_clk       (CLOCK_50/* Connect the clock */),       
        .reset_reset_n (KEY[0]/* Connect a Key for reset */), 
        .ledr_export   (LEDR[9:0]/* Connect all LEDs */),   
        .sw_export     (SW[9:0]/* Connect all Switches */)      
    );

	 
endmodule