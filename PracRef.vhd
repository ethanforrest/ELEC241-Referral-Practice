library ieee;
use ieee.std_logic_1164.all
use ieee.numeric_std.all

entity SPImaster is 
	generic(
	cpolarity    	: std_logic := '0';  					-- SPI clock polarity.
    	cphase    	: std_logic := '0';  					-- SPI clock phase.
    	datawidth 	: integer   :=  8);     				-- Width of the data = 8 bits.

	N 		: integer   : = 8;

	port(
	MISO 	: in std_logic;								-- "Master In Slave Out" communication from master to slave.
	start	: in std_logic;								-- Start the system.
	sysclk	: in std_logic;								-- System clock.
	enable 	: in std_logic;								-- Enable the output.
	reset	: in std_logic;								-- Aysnchronous reset.										



	MOSI	: out std_logic;							-- "Master Out Slave In" communication from slave to master; kept at 0 for this.
	CS	: out std_logic;							-- Chip select; high at rest.
	sclk	: out std_logic;							-- 1MHz serial clock.
	Y	: out std_logic;							-- 8-bit unsigned value.
    );
end SPImaster;

architecture arc of SPImaster is 
