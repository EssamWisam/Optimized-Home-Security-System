library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logic_hw is
   port( 
   clk, rst : in std_logic;
   inp : in std_logic_vector(9 downto 0);    -- SFD SRD SA SW ST ST ST ST ST ST (43 F to 107 F)
   outp : out std_logic_vector(5 downto 0);  -- FDOOR RDOOR WINBUZZ ALARMBUZZ HEATER COOLER
   disp : out std_logic_vector(2 downto 0)   -- D2 D1 D0
   );
end logic_hw;


architecture a_logic_hw of logic_hw is
signal outpp:  std_logic_vector(5 downto 0);
signal dispp :  std_logic_vector(2 downto 0);
begin
   process (clk)
   begin
      if rising_edge(clk) then
         if rst = '1' then                           -- synchronous reset. 
            outpp <= (others =>'0');
            dispp <= "000";
         elsif inp(9)='1' then                     -- front door
            outpp <= (5 => '1', others =>'0');
            dispp <= "001";
         elsif inp(8)='1' then                     -- back door
            outpp <= (4 => '1', others =>'0');
            dispp <= "010";
         elsif inp(6)='1' then                     -- fire alarm
            outpp <= (2 => '1', others =>'0');
            dispp <= "011";
         elsif inp(7)='1' then                     -- window
            outpp <= (3 => '1', others =>'0');
            dispp <= "100";
         else                                        -- temperature
            if unsigned(inp(5 downto 0)) < 7 then
               outpp <= (1 => '1', others =>'0');
               dispp <= "101";
            elsif unsigned(inp(5 downto 0)) > 27 then
               outpp <= (0 => '1', others =>'0');
               dispp <= "011";
            else
               outpp <= (others =>'0');
               dispp <= "000";
            end if;
         end if;
      end if;
end process; 
outp <= outpp;
disp <= dispp;
end a_logic_hw;
