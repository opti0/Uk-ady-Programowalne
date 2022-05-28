----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2022 21:57:47
-- Design Name: 
-- Module Name: test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test is
   
end test;

architecture Behavioral of test is
component SUM1B is
    Port ( cin : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC;
           cout : out std_logic);
end component;
signal cin: std_logic := '0';
signal a: std_logic := '0';
signal b: std_logic := '0';
signal y: std_logic;
signal cout: std_logic;
begin
s0: SUM1B port map (cin => cin, a => a, b => b, y => y, cout => cout);
process
begin
wait for 50ns;
a <= '1';
wait for 50ns;
b <= '1';
wait for 50ns;
a <= '0';
wait for 50ns;



end process;

end Behavioral;
