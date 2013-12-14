Papilio Pro Project - PapilioPro_Joystick_Controls_SevenSegmentLed

  Simple project using the Megawing logic board.
  This uses the joystick to control the seven segment LED.
  At powerup the decimal point will be lit.
  Pressing up on the joystick will light segment A.
  Pressing down on the joystick will light segment D.
  Pressing right on the joystick will light segments B and C.
  Pressing left on the joystick will light segments E and F.
  Pressing select on the joystick will light all segments.
  
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
  
  
  