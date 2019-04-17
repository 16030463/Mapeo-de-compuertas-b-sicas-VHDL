----MAPEO----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Practica1_Mapeo is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (5 downto 0));
end Practica1_Mapeo;

architecture Behavioral of TOP is

component s_not is
    Port ( a : in  STD_LOGIC;
           s : out  STD_LOGIC);
end component;

component s_and is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end component;

component s_or is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end component;

component s_nand is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end component;

component s_xor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end component;

component s_nor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end component;


begin

u1: s_not port map(a,s(0));
u2: s_and port map(a,b,s(1));
u3: s_or port map(a,b,s(2));
u4: s_nand port map(a,b,s(3));
u5: s_xor port map(a,b,s(4));
u6: s_nor port map(a,b,s(5));

end str;

---- NOT-----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity s_not is
    Port ( a : in  STD_LOGIC;
           s : out  STD_LOGIC);
end s_not;

architecture Behavioral of s_not is

begin

		s <= (not a);

end Behavioral;


-----AND-------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity s_and is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end s_and;

architecture Behavioral of s_and is

begin

		s <= (a and b);

end Behavioral;


-------- OR-----------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity c_or is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end s_or;

architecture Behavioral of s_or is

begin

		s <= (a or b);

end Behavioral;



-------NAND----------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity s_nand is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end s_nand;

architecture Behavioral of s_nand is

begin

		s <= (a nand b);

end Behavioral;


------XOR-------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity s_xor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end s_xor;

architecture Behavioral of s_xor is

begin

		s <= (a xor b);

end Behavioral;


-----COMPUERTA NOR------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity s_nor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC);
end s_nor;

architecture Behavioral of s_nor is

begin

		s <= (a nor b);

end Behavioral;


