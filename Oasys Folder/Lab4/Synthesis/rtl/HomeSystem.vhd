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
signal last_visited_1: std_logic_vector(1 downto 0);
signal last_visited_2: std_logic_vector(1 downto 0);
signal i: std_logic;                        -- simply a counter
 
begin
   process (clk)
   begin
      if rising_edge(clk) then
         if rst = '1' then                           -- synchronous reset. 
            outpp <= (others =>'0');
            dispp <= "000";
            last_visited_1 <= "11";
            last_visited_2 <= "10";
            i <= '0';
         elsif inp(9)='1' and not ((last_visited_1 = "00") and (last_visited_2 = "00")) then                     -- front door
            outpp <= (5 => '1', others =>'0');
            dispp <= "001";
            if(i = '0') then
               last_visited_1 <= "00";
		      i <='1';
            else
               last_visited_2 <= "00";
		      i <='0';
            end if;
 
         elsif inp(8)='1' and not ((last_visited_1 = "01") and (last_visited_2 = "01")) then                 -- back door
            outpp <= (4 => '1', others =>'0');
            dispp <= "010";
            if(i = '0') then
               last_visited_1 <= "01";
		         i <='1';
            else
               last_visited_2 <= "01";
		         i <='0';
            end if;
         elsif inp(6)='1' and not ((last_visited_1 = "10") and (last_visited_2 = "10")) then                   -- fire alarm
            outpp <= (2 => '1', others =>'0');
            dispp <= "011";
            if(i = '0') then
               last_visited_1 <= "10";
		         i <='1';
            else
               last_visited_2 <= "10";
		         i <='0';
            end if;
         elsif inp(7)='1' and not ((last_visited_1 = "11") and (last_visited_2 = "11")) then                                     -- window
            outpp <= (3 => '1', others =>'0');
            dispp <= "100";
            if(i = '0') then
               last_visited_1 <= "11";
		         i <='1';
            else
               last_visited_2 <= "11";
		         i <='0';
            end if;
         else                                                                             -- temperature
 
            if unsigned(inp(5 downto 0)) < 7 then
               outpp <= (1 => '1', others =>'0');
               dispp <= "101";
		last_visited_1 <= "11";
                last_visited_2 <= "10";
            elsif unsigned(inp(5 downto 0)) > 27 then
               outpp <= (0 => '1', others =>'0');
               dispp <= "011";
		last_visited_1 <= "11";
                last_visited_2 <= "10";
            else
               outpp <= (others =>'0');
               dispp <= "000";
		last_visited_1 <= "11";
                last_visited_2 <= "10";
            end if;
         end if;
      end if;
end process; 
 
outp <= outpp;
disp <= dispp;
end a_logic_hw;
