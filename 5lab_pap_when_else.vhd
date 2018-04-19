library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity mux is port (
	d0, d1, d2, d3  : in  std_logic;
	A_B : in  std_logic_vector (0 to 1); 
	F : out std_logic 
	); 
end mux; 
architecture rtl of mux is  
begin    
F <= d0 when A_B = "00" else
	 d1 when A_B = "01" else
	 d2 when A_B = "10" else
	 d3 when A_B = "11";
end rtl; 

