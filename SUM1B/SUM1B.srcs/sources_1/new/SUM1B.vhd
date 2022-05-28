----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.03.2022 10:09:05
-- Design Name: 
-- Module Name: SUM1B - Behavioral
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

entity SUM1B is
    Port ( cin : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC;
           cout : out std_logic);
end SUM1B;

architecture Behavioral of SUM1B is

begin
y <= a xor b xor cin;
cout <= (b and a) or (cin and a) or (cin and b);

end Behavioral;
