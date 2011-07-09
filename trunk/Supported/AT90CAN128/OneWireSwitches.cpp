#include "OneWireSwitches.h"
#include "WProgram.h"
#include "Configuration.h"


char oldSwitchState;
char newSwitchState;

void InitialiseOneWireSwitches()
{
   Serial1.begin(9600); 	//Odd value because the ATTINY uses internal clock which has a lot of error. 
							//Calibration of ATTINY required.

  newSwitchState = 0;
  oldSwitchState = 0;  

  pinMode(HORN_OUTPUT_PIN, OUTPUT);

}


char readSwitches()
{
  oldSwitchState = newSwitchState;
		
  //Add checking / timeout here, currently if switches not connected it locks the software.
  newSwitchState = Serial1.read(); 
		
  //To fix - somtimes does not read the switches properly:
  if(newSwitchState == 255)
    newSwitchState = oldSwitchState;
  
  Serial1.flush();
		

  if(newSwitchState != oldSwitchState)
    return newSwitchState;
  else
    return NO_SWITCH_PRESSED;
}
