----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:20:22 02/12/2020 
-- Design Name: 
-- Module Name:    cv2 - Behavioral 
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

entity cv2 is
    port (BTN1, BTN0:    in  std_logic;
          LD2, LD1, LD0: out std_logic);
end entity cv2;

architecture Behavioral of cv2 is

begin
    LD2 <= BTN0 and not BTN1;
    LD1 <= (not BTN0 and not BTN1) or (BTN0 and BTN1);
    LD0 <= not BTN0 and BTN1;

end architecture Behavioral;

