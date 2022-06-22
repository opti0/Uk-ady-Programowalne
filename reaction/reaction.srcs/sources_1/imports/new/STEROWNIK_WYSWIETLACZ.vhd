library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity STEROWNIK_WYSWIETLACZ is
    Port ( D0 : in STD_LOGIC_VECTOR (3 downto 0);
           D1 : in STD_LOGIC_VECTOR (3 downto 0);
           D2 : in STD_LOGIC_VECTOR (3 downto 0);
           D3 : in STD_LOGIC_VECTOR (3 downto 0);
           DP : in STD_LOGIC_VECTOR (3 downto 0);
           EN : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           SEG : out STD_LOGIC_VECTOR (7 downto 0);
           AN : out STD_LOGIC_VECTOR (3 downto 0));
end STEROWNIK_WYSWIETLACZ;

architecture Behavioral of STEROWNIK_WYSWIETLACZ is

    --deklaracja komponentów
    component BINTO4 is
        Port ( COUNTER : in STD_LOGIC_VECTOR (1 downto 0);
               AN : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component BINTO7SEG is
        Port ( X : in STD_LOGIC_VECTOR (3 downto 0);
               EN : in STD_LOGIC;
               DP : in STD_LOGIC;
               SEG : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component COUNTER3B is
        Port ( EN : in STD_LOGIC;
               CLK : in STD_LOGIC;
               RESET : in STD_LOGIC;
               COUNTER_OUT : out STD_LOGIC_VECTOR (1 downto 0));
    end component;
    
    component MUX11 is
        Port ( D0 : in STD_LOGIC_VECTOR (3 downto 0);
               D1 : in STD_LOGIC_VECTOR (3 downto 0);
               D2 : in STD_LOGIC_VECTOR (3 downto 0);
               D3 : in STD_LOGIC_VECTOR (3 downto 0);
               COUNTER : in STD_LOGIC_VECTOR (1 downto 0);
               MUX1_OUT : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component MUX2 is
        Port ( DP : in STD_LOGIC_VECTOR (3 downto 0);
               COUNTER : in STD_LOGIC_VECTOR (1 downto 0);
               MUX2_OUT : out STD_LOGIC);
    end component;

--sygna³y
    --wyjscie licznika
    signal COUNTER_OUT : STD_LOGIC_VECTOR (1 downto 0);
    --wyjscie mux1
    signal MUX1_OUT : STD_LOGIC_VECTOR (3 downto 0);
    --wyjscie mux2
    signal MUX2_OUT : STD_LOGIC;
    
begin  
    --licznik
    s0 : COUNTER3B port map (EN => EN, CLK => CLK, RESET => RESET, COUNTER_OUT => COUNTER_OUT);
    --mux1
    s1 : MUX11 port map (D0 => D0, D1 => D1, D2 => D2, D3 => D3, COUNTER => COUNTER_OUT, MUX1_OUT => MUX1_OUT);
    --mux2
    s2 : MUX2 port map (DP => DP, COUNTER => COUNTER_OUT, MUX2_OUT => MUX2_OUT);
    --transkoder
    s3 : BINTO4 port map (COUNTER => COUNTER_OUT, AN => AN);
    --binto7seg
    s4 : BINTO7SEG port map (X => MUX1_OUT, EN => EN, DP => MUX2_OUT, SEG => SEG);
end Behavioral;
