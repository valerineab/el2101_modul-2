-- Nama         : Valerine Amoret Bonggakarua
-- NIM          : 13223082
-- Kelas        : K-01
-- Rombongan    : E
-- Kelompok     : 2
-- Tanggal      : 15 Oktober 2024

-- Soal No. 1B (Full Adder 4-bit)
library ieee;
use ieee.std_logic_1164.all;

entity fulladder_4bit is
    port (
        A : in std_logic_vector(3 downto 0); -- A sebagai input 4 bit
        B : in std_logic_vector(3 downto 0); -- B sebagai input 4 bit
        Carry_in : in std_logic; -- Carry_in sebagai input 1 bit
        Sum : out std_logic_vector(3 downto 0); -- Sum sebagai input 4 bit
        Carry_out : out std_logic -- Carry_out sebagai output 1 bit (carry dari terakhir)
    );
end fulladder_4bit;

architecture fa_4bit of fulladder_4bit is
    Signal Carry : std_logic_vector(2 downto 0); -- Signal Carry untuk membawa carry di operasi tiap bit
    
    component fulladder 
        port (
            A, B, Carry_in : in std_logic;
            Sum, Carry_out : out std_logic
        );
    end component;
begin
    bit_0 : fulladder port map (A(0), B(0), Carry_in, Sum(0), Carry(0));
    bit_1 : fulladder port map (A(1), B(1), Carry(0), Sum(1), Carry(1));
    bit_2 : fulladder port map (A(2), B(2), Carry(1), Sum(2), Carry(2));
    bit_3 : fulladder port map (A(3), B(3), Carry(2), Sum(3), Carry_out);
end architecture;