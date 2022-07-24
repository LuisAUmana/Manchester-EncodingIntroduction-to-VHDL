library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Manchester_Test is
--(Port)
end Manchester_Test;
architecture Behavioral of Manchester_Test is
signal str_input:STD_LOGIC_VECTOR(7 downto 0);
signal clk :std_logic;
signal reset :std_logic;
signal str_output:std_logic;
begin
p0:entity work.ManchesterEncoder(Behavioral) port map
(str_input=> str_input,clk=>clk,reset=>reset,str_output=>str_output);
clock_process :process
begin
    str_input <= "01100010";
    clk <= '0';
    wait for 20 ns;
    clk <= '1';
    wait for 20 ns;
end process;
stim_proc: process
begin
    reset <= '1';
    wait for 20 ns;
    reset <= '0';
end process;
end Behavioral;
