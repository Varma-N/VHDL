library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_Gate_tb is
end AND_Gate_tb;

architecture Behavioral of AND_Gate_tb is

    -- Component Declaration for the AND Gate
    component AND_Gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    -- Signals for inputs and outputs
    signal A : STD_LOGIC := '0';
    signal B : STD_LOGIC := '0';
    signal Y : STD_LOGIC;

begin

    -- Instantiate the AND Gate
    UUT: AND_Gate Port Map (A => A, B => B, Y => Y);

    -- Test vector process
    process
    begin
        -- Test case 1: A = 0, B = 0
        A <= '0';
        B <= '0';
        wait for 10 ns; -- Wait for 10 nanoseconds
        assert (Y = '0') report "Test case 1 failed!" severity ERROR;

        -- Test case 2: A = 0, B = 1
        A <= '0';
        B <= '1';
        wait for 10 ns;
        assert (Y = '0') report "Test case 2 failed!" severity ERROR;

        -- Test case 3: A = 1, B = 0
        A <= '1';
        B <= '0';
        wait for 10 ns;
        assert (Y = '0') report "Test case 3 failed!" severity ERROR;

        -- Test case 4: A = 1, B = 1
        A <= '1';
        B <= '1';
        wait for 10 ns;
        assert (Y = '1') report "Test case 4 failed!" severity ERROR;

        -- End simulation
        wait;
    end process;

end Behavioral;

