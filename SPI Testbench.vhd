-- SPI Master Testbench --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity spi_tb is
end entity;
 
architecture sim of spi_tb is
 
    constant ClockFrequency : integer := 50e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
 
    signal Clk    : std_logic := '1';
   
 
begin

    -- Process for generating the clock
    Clk <= not Clk after ClockPeriod / 2;

end sim;