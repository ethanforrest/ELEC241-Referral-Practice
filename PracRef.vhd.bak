library ieee;
use ieee.std_logic_1164.all
use ieee.numeric_std.all

entity SPImaster is 
	generic(
	cpolarity    	: std_logic := '0';  					-- SPI clock polarity.
    	cphase    	: std_logic := '0';  					-- SPI clock phase.
    	datawidth 	: integer   :=  8);     				-- Width of the data = 8 bits.

	port(
	MISO 	: in std_logic;								-- "Master In Slave Out" communication from master to slave.
	start	: in std_logic;								-- start the system.
	sysclk	: in std_logic;								-- system clock.

	MOSI	: out std_logic;							-- "Master Out Slave In" communication from slave to master; kept at 0 for this.
	CS	: out std_logic;							-- chip select; high at rest.
	sclk	: out std_logic;							-- 1MHz serial clock.
	Y	: out std_logic;							-- 8-bit unsigned value.
    );
end SPImaster;

architecture arc of SPImaster is 
