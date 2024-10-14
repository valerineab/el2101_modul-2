-- Nama         : Valerine Amoret Bonggakarua
-- NIM          : 13223082
-- Kelas        : K-01
-- Rombongan    : E
-- Kelompok     : 2
-- Tanggal      : 15 Oktober 2024

-- Soal No. 2B (Display bilangan desimal 1 digit (biner 4 bit) ke seven segment)
library ieee;
use ieee.std_logic_1164.all;

entity sevensegment is
    port (
        i : in std_logic_vector(3 downto 0); -- i sebagai input 4 bit
        a, b, c, d, e, f, g : out std_logic -- a,b,c,d,e,f, dan g sebagai output 1 bit
    );
end sevensegment;

architecture ss of sevensegment is

begin
    a <= not(i(3)) and not(i(1)) and (i(2) nand i(0)); -- operasi logika untuk a
    b <= (i(1) nand i(0)) and i(2); -- operasi logika untuk b
    c <= not(i(2)) and i(1) and not(i(0)); -- operasi logika untuk c
    d <= (not(i(3)) and not(i(2)) and not(i(1)) and i(0)) or (i(2) and (i(1) xnor i(0))); -- operasi logika untuk d
    e <= (not(i(1)) or i(0)) and (i(2) or i(0)); -- operasi logika untuk e
    f <= i(3) and (not(i(2)) or (i(1) and i(0))) and (i(1) or i(0)); -- operasi logika untuk f
    g <= (not(i(3)) and not(i(2)) and not(i(1))) or (i(2) and i(1) and i(0)); -- operasi logika untuk g

end architecture;