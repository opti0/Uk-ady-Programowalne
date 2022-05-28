----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.04.2022 22:29:11
-- Design Name: 
-- Module Name: MUL4X4_test - Behavioral
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

entity MUL4X4_test is

end MUL4X4_test;

architecture Behavioral of MUL4X4_test is
component MUL4X4
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0));
           end component;
signal a: std_logic_vector (3 downto 0);
signal b: std_logic_vector (3 downto 0);
signal y: std_logic_vector (7 downto 0);

begin
x0: MUL4X4 port map (a => A, b => B, y => Y );
process begin
a <= "1011";
b  <= "1101";

wait for 50ns;

a <= "1011";
b  <= "0000";

wait for 50ns;

a <= "1111";
b  <= "1111";

wait;


end process;



end Behavioral;
