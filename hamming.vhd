----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:27:34 10/16/2017 
-- Design Name: 
-- Module Name:    hammingout - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hammingout is
    Port ( b3 : in  STD_LOGIC;
           b5 : in  STD_LOGIC;
           b6 : in  STD_LOGIC;
           b7 : in  STD_LOGIC;
           b1 : out  STD_LOGIC;
           b2 : out  STD_LOGIC;
           b4 : out  STD_LOGIC;
           c3 : out  STD_LOGIC;
           c5 : out  STD_LOGIC;
           c6 : out  STD_LOGIC;
           c7 : out  STD_LOGIC);
end hammingout;

architecture Behavioral of hammingout is

begin


end Behavioral;

