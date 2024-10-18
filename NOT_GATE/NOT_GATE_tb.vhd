-- Testbench for NOT Gate
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_GATE_tb is
end NOT_GATE_tb;

architecture Behavioral of NOT_GATE_tb is

    -- Signals to connect to the NOT gate
    signal A_tb : STD_LOGIC := '0';  -- Test input
    signal Y_tb : STD_LOGIC;         -- Test output

    -- Component Declaration for the NOT gate
    component NOT_GATE
        Port ( A : in  STD_LOGIC;
               Y : out STD_LOGIC );
    end component;

begin

    -- Instantiate the NOT gate
    uut: NOT_GATE
        Port map (
            A => A_tb,
            Y => Y_tb
        );

    -- Stimulus process to apply inputs and verify outputs
    stimulus: process
    begin
        -- Test Case 1: A = '0'
        A_tb <= '0';
        wait for 10 ns;
        
        -- Test Case 2: A = '1'
        A_tb <= '1';
        wait for 10 ns;

        -- Stop the simulation
        wait;
    end process;

end Behavioral;
