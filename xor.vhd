-- ejemplo de una Xor.vhd
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor2 is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Y : out STD_LOGIC
    );
end xor2;

architecture Behavioral of xor2 is
begin
    Y <= A xor B; -- operación lógica XOR
end Behavioral;
