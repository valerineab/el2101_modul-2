-- Nama         : Valerine Amoret Bonggakarua
-- NIM          : 13223082
-- Kelas        : K-01
-- Rombongan    : E
-- Kelompok     : 2
-- Tanggal      : 15 Oktober 2024

-- Soal No. 1A (Full Adder 1-bit)
library ieee;
use ieee.std_logic_1164.all;

entity fulladder is -- port A, B, dan Carry_in sebagai input 1 bit, Sum dan Carry_out sebagai output 1 bit
    port ( 
        A, B, Carry_in : in std_logic;
        Sum, Carry_out : out std_logic
    );
end fulladder;

architecture fadder of fulladder is

begin
    Sum <= A xor B xor Carry_in; -- operasi fungsi logika untuk Sum
    Carry_out <= (A and B) or (Carry_in and (A xor B)); -- operasi fungsi logika untuk Cout

end architecture;

