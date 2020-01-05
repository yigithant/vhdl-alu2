library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity alu is
port(
a:in std_logic_vector(1 downto 0);
b:in std_logic_vector(1 downto 0);
sel:in std_logic_vector(1 downto 0);
result:out std_logic_vector(1 downto 0)
);
end alu;

architecture behavior of alu is
begin
process(a,b,sel)
begin
case sel is
	when "00"=> result<=a+b;
	when "01"=>result<=a+(not b) +1;
	when "10"=>result<=a and b;
	when "11"=>result<=a or b;
	when others=>result<="XX";
end case;
end process;
end behavior;
