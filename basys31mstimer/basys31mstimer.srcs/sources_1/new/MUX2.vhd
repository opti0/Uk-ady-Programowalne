----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.04.2022 10:01:46
-- Design Name: 
-- Module Name: MUX2 - Behavioral
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

entity MUX2 is
    Port ( DP : in STD_LOGIC_VECTOR (3 downto 0);
           COUNTER : in STD_LOGIC_VECTOR (1 downto 0);
           MUX2_OUT : out STD_LOGIC);
end MUX2;

architecture Behavioral of MUX2 is

begin

with COUNTER select
    MUX2_OUT <= DP(0) when "00",
                DP(1) when "01",
                DP(2) when "10",
                DP(3) when "11",
                '1' when others;

end Behavioral;
