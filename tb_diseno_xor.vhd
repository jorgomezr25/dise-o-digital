library ieee;
use ieee.std_logic_1164.all;

entity tb_xor2 is
end tb_xor2;

architecture tb of tb_xor2 is

    component xor2
        port (A : in std_logic;
              B : in std_logic;
              Y : out std_logic);
    end component;

    signal A_sig : std_logic;
    signal B_sig : std_logic;
    signal Y_sig : std_logic;

begin

    dut : xor2
    port map (
    			A => A_sig,
              	B => B_sig,
              	Y => Y_sig
              );

    stimuli : process
    begin
        -- ***EDIT*** Adapt initialization as needed
        
        -- PRUEBA CASO 1
        A_sig <= '0';
        B_sig <= '0';
        wait for 10 ns;  -- Linea agregada de estímulo 
        report "A=0 B=0 => Y=" & STD_LOGIC'image(Y_sig);  -- Linea agregada de consola

        -- ***EDIT*** Add stimuli here
        
        -- PRUEBA CASO 2
        A_sig <= '1';
        B_sig <= '0';
        wait for 10 ns;  -- Linea agregada de estímulo 
        report "A=1 B=0 => Y=" & STD_LOGIC'image(Y_sig);  -- Linea agregada de consola

 		-- PRUEBA CASO 3
		A_sig <= '0';
        B_sig <= '1';
        wait for 10 ns;  -- Linea agregada de estímulo 
        report "A=0 B=1 => Y=" & STD_LOGIC'image(Y_sig);  -- Linea agregada de consola

		-- PRUEBA CASO 4
		A_sig <= '1';
        B_sig <= '1';
        wait for 10 ns;  -- Linea agregada de estímulo 
        report "A=1 B=1 => Y=" & STD_LOGIC'image(Y_sig);  -- Linea agregada de consola

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

