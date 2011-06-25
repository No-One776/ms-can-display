#include "OneWireSwitches.h"
#include "WProgram.h"
#include "Configuration.h"

/*
void InitialiseOneWireSwitches()
{
   Serial1.begin(330); 	//Odd value because the ATTINY uses internal clock which has a lot of error. 
							//Calibration of ATTINY required.

  newSwitchState = 7;
  oldSwitchState = 0;  

  pinMode(HORN_OUTPUT_PIN, OUTPUT);

}

void readSwitches()
{
  oldSwitchState = newSwitchState;
		
  //Add checking / timeout here, currently if switches not connected it locks the software.
  newSwitchState = Serial1.read(); 
		
  //To fix - somtimes does not read the switches properly:
  if(newSwitchState == 255)
    newSwitchState = oldSwitchState;
  
  Serial1.flush();
		

  if(newSwitchState != oldSwitchState)
  {
    switch(newSwitchState)
    {
      case SWITCH_UP:
          Menu++;
          if(Menu > 3)
            Menu = 0;
          
	  digitalWrite(HORN_OUTPUT_PIN, 0);
          digitalWrite(DISPLAY_RESET_PIN, 0);
      break;
    
      case SWITCH_DOWN:
      if(Menu == 0)
        Menu = 3;
      else
        Menu--;
      
      digitalWrite(HORN_OUTPUT_PIN, 0);
      digitalWrite(DISPLAY_RESET_PIN, 0);
      break;

      case SWITCH_HORN:
      digitalWrite(HORN_OUTPUT_PIN, 1);
      digitalWrite(DISPLAY_RESET_PIN, 0);
      break;
      
      case ALL_SWITCH_PRESSED:
      digitalWrite(DISPLAY_RESET_PIN, 1);
      digitalWrite(HORN_OUTPUT_PIN, 0);
      break;
      
      default:
      digitalWrite(HORN_OUTPUT_PIN, 0);
      digitalWrite(DISPLAY_RESET_PIN, 0);
    }
  }
}

*/
