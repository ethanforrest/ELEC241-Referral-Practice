-- SPI Master -- 									

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity spi_master is

		generic ( N : natural := 8);

port(		MISO		: in 	std_logic_vector ((N-1) downto 0);			-- 'Master In Slave Out'
		Start		: in	std_logic;						-- Starts the system.
		Sys_CLK		: in 	std_logic;						-- 50MHz clock for the system.

		CS		: out 	std_logic;						-- Chip selector; held high at rest. 
		SCLK		: out	std_logic;						-- Held low at rest.
		MOSI		: out	std_logic_vector ((N-1) downto 0);			-- 'Master Out Slave In'.
		Y		: out	std_logic_vector ((N-1) downto 0));			-- Output.
		
end entity;


architecture arc of spi_master is 


signal tx	: std_logic_vector ((N-1) downto 0);						-- Transmit.
signal output   : std_logic_vector ((N-1) downto 0); 						-- Out to slave.
signal rx	: std_logic_vector ((N-1) downto 0);						-- Recieve.
signal input	: std_logic_vector ((N-1) downto 0);						-- In from slave.




begin 

process (Sys_CLK)

begin

	MOSI <= "ZZZZZZZZ";									-- Always low

	if (start <= '0') then									-- When start is 0, the chip selector is high and the transmit line is held.

	tx <= "ZZZZZZZZ";
	cs <= '1';

	elsif (start <='1' then

		if(rising_edge(Sys_CLK)) then							-- When Sys_CLK is rising...

		output <= tx; 										-- Set the MOSI to tx.
		input  <= rx;

		cs <= '0';	
		end if;									-- Chip select is pulled low.

	end if;

end process;

end arc;


	-- Not entirely confident in what I have written, but think I understand the basis of what is happening in SPI Masters. Need to start, then send the output value to the TX value. 
	-- I believe this would then be attached to an 'rx' for the slave component.
	-- This component does compile, which gives me some confidence in it. I am hopeful this component has demonstrated my understanding.


	









