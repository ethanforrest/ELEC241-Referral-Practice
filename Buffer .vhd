
-- Buffer -- 									

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity buffer is

				generic ( N : natural := 8);

	tx		:	std_logic_vector ((N-1) downto 0);				-- Data to be sent.
	txload		:	std_logic_vector ((N-1) downto 0);				-- Load.
	rx		:	std_logic_vector ((N-1) downto 0);				-- Recieve line.
	rxload		:	std_logic_vector ((N-1) downto 0);				-- Load
	hold		:	std_logic_vector ((N-1) downto 0);				-- Holds the data from the SPI before it leaves to the slave.
	clock		:	std_logic;							-- Clock.
 
end buffer;


architecture buffarc of buffer is 


	signal clock	:	std_logic;	
	signal rx_buf 	: 	std_logic_vector ((N-1) downto 0)	:= (others => '0');  		--receiver buffer
  	signal tx_buf 	: 	std_logic_vector ((N-1) downto 0) 	:= (others => '0');  		--transmit buffer

begin 

if rising_edge(clock) then 

input <= hold;



	

 
end bufferarc;



 -- Buffer Plan -- 

 -- Signals for tx and rx (mosi and miso).
 -- Send to the calc component.
	-- "... the buffer data is then read and analaysed by the CALC component" so it does not need to be written
	-- Being marked on the buffer. 
 -- "0000" & input to make the 12-bit value.
 -- Store in array.

 -- Concatonate the input -> send it to the array -> when the array is full, empty it to the calc -> start filling again.
	















