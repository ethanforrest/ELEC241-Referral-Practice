-- SPI Master Testbench --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity spi_tb is
end entity;
 
architecture sim of spi_tb is
 
	constant ClockFrequency : integer := 50e6; -- 100 MHz
    	constant ClockPeriod    : time    := 10000 ms / ClockFrequency;			-- Gives the desired 1MHz period.
 
    	signal Clk    : std_logic := '1';							-- Initialise it.

	signal miso   : std_logic_vector ((N-1) downto 0);
	
   
 
begin

    -- Process for generating the clock
    Clk <= not Clk after ClockPeriod / 2;	

	Y = "10100101";							-- Give Y a value.			

if (rising_edge(Clk)) then						-- Measured on the rising edge.

 	miso <= Y;

	CS <= '0';
		
eleif CS <='1'

assert cs ='1' report "CS high" severity failure;			-- this is unfortunately all I have managed to get done for this task.


end if;


end sim;

 -- SPI Testbench Plan -- 

 -- Generate the clock signal.
 -- Give it an input value say Y = "10100101".
 -- Check that the CS is low.
 -- Check that the MISO line is low.
	-- Use the assert command for these two.
	-- Exit on the error if either of these two lines is not low.
 -- That should complete the testbench.



