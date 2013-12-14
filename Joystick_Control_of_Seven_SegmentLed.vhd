----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:04:28 12/14/2013 
-- Design Name: 
-- Module Name:    Joystick_Control_of_Seven_SegmentLed - Behavioral 
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

entity Joystick_Control_of_Seven_SegmentLed is
    Port ( JOY_RIGHT : in  STD_LOGIC;
           JOY_LEFT : in  STD_LOGIC;
           JOY_DOWN : in  STD_LOGIC;
           JOY_UP : in  STD_LOGIC;
           JOY_SELECT : in  STD_LOGIC;
           SEG7_A : out  STD_LOGIC;
           SEG7_B : out  STD_LOGIC;
           SEG7_C : out  STD_LOGIC;
           SEG7_D : out  STD_LOGIC;
           SEG7_E : out  STD_LOGIC;
           SEG7_F : out  STD_LOGIC;
           SEG7_G : out  STD_LOGIC;
           SEG7_DP : out  STD_LOGIC;
			  SEG7_AN : out STD_LOGIC_VECTOR(3 downto 0)
			 );
end Joystick_Control_of_Seven_SegmentLed;

architecture Behavioral of Joystick_Control_of_Seven_SegmentLed is
---------------------------------------
-- Seven Segment LED mapping
--
--      A
--     ---
--  F | G | B
--     --- 
--  E | D | C
--     --- . DP  
--   
--  LEDs are active low(on = '0')
--  Joystick is active low(pressed = '0')       
---------------------------------------
begin
   -- Use the first 7 segment LED
	SEG7_AN <= "0111"; --note - vector uses ""
	SEG7_A <= JOY_UP AND JOY_SELECT;
	SEG7_B <= JOY_RIGHT AND JOY_SELECT;
	SEG7_C <= JOY_RIGHT AND JOY_SELECT;
	SEG7_D <= JOY_DOWN AND JOY_SELECT;
	SEG7_E <= JOY_LEFT AND JOY_SELECT;
	SEG7_F <= JOY_LEFT AND JOY_SELECT;
	SEG7_G <= JOY_SELECT;
	SEG7_DP <= '0';

end Behavioral;

