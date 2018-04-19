library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Small_ckt is port (
A, B, C : in std_logic;
F1, F2 : out std_logic
);
end Small_ckt;

architecture behavioral of Small_ckt is
begin
process (A, B, C)
begin
	if (A='1' and B='0') or (A='0' and C='0') then F1<='0'; 
	else F1<='1'; 
	end if; 

	case (A and not B) nor (not A and not C) is
			when '1' => F2 <= '1';
			when '0' => F2 <= '0';
			when others => null;
	end case;
end process;
end behavioral;