-- Nama         : Valerine Amoret Bonggakarua
-- NIM          : 13223082
-- Kelas        : K-01
-- Rombongan    : E
-- Kelompok     : 2
-- Tanggal      : 15 Oktober 2024

-- Soal No. 2A (Convert bilangan 5 bit biner ke dalam bentuk BCD 2 digit desimal (8 bit biner))
library ieee;
use ieee.std_logic_1164.all;

entity bittobcd is
    port (
        i : in std_logic_vector(4 downto 0); -- i sebagai input 5 bit
        o_tens, o_ones : out std_logic_vector(3 downto 0) -- o_tens sebagai output puluhan dan o_ones sebagai output satuan (1 desimal, 4 bit)
    );
end bittobcd;

architecture btob of bittobcd is

begin
    o_tens(3) <= '0'; -- bit 4 puluhan
    o_tens(2) <= '0'; -- bit 3 puluhan
    o_tens(1) <= (i(4) and i(3)) or (i(4) and i(2)); -- bit 2 puluhan
    o_tens(0) <= ((not(i(4))) and i(3) and i(1)) or ((not(i(4))) and i(3) and i(2)) or (i(4) or (not(i(3))) or (not(i(2)))) or (i(3) and i(2) and i(1)); -- bit 1 puluhan
    o_ones(3) <= ((not(i(4))) and i(3) and (not(i(2))) and (not(i(1)))) or (i(4) and (not(i(3))) and (not(i(2))) and i(1)) or (i(4) and i(3) and i(2) and (not(i(1)))); -- bit 4 satuan
    o_ones(2) <= ((not(i(4))) and (not(i(3))) and i(2)) or (i(3) and (not(i(2))) and i(1)) or (i(4) and (not(i(3))) and (not(i(2))) and (not(i(1)))) or (i(4) or i(3) or (not(i(2)))); -- bit 3 satuan
    o_ones(1) <= ((not(i(4))) and i(3) and i(2) and i(1)) or ((not(i(4))) and (not(i(3))) and i(1)) or (i(4) and (not(i(3))) and (not(i(2))) and (not(i(1)))) or (i(4) and (not(i(3))) and i(2) and i(1)) or (i(4) and i(3) and (not(i(2))) and i(1)); -- bit 2 satuan
    o_ones(0) <= i(0); -- bit 1 satuan

end architecture;