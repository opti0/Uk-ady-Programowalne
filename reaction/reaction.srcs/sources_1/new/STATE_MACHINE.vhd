----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.06.2022 15:57:54
-- Design Name: 
-- Module Name: STATE_MACHINE - Behavioral
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity STATE_MACHINE is
 Port (
 clk: in std_logic;
 btn: in std_logic;
 RESET: in std_logic;
 LED: out std_logic;
 CEN: out std_logic;
 CRST: out std_logic );
end STATE_MACHINE;

architecture Behavioral of STATE_MACHINE is
signal state: std_logic_vector(1 downto 0);
signal clock: unsigned (9 downto 0);
begin
process(RESET, CLK)
begin
-- Okreœlenie stanu pocz¹tkowego i wyjœæ po resecie
if RESET = '1' then
state <= "00";
CEN <= '0';
CRST <= '1';

elsif rising_edge(CLK) then
case state is
    when "00" =>
        CEN <= '0';
        led <= '0';
        CRST <= '0';
        clock <= clock + 1;
        if clock = 1000 then
            state <= "01";
        end if;
    when "01" =>
        clock <= "0000000000";
        CEN <= '1';
        led <= '1';
        if btn = '1' then
            state <= "10";
        end if;

    when "10" =>
        CEN <= '0';
        led <= '0';

    when others =>
    state <= "00";
    CEN <= '0';
end case;
end if;
end process;


end Behavioral;
