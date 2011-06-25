#include "./DisplayCommand.h"
#include "./MSDataObject.h"
#include "./Configuration.h"
#include "./CANFunctions.h"


/*

Bare bones proof of concept example.

Polls Megasquirt over CAN

Reads switches over one wire bus

Sends commands to display data on 4dgl display.

Controls a small low side driver to switch the horn relay.

 */

#define SWITCH_UP 6
#define SWITCH_DOWN  3
#define SWITCH_HORN 5
#define ALL_SWITCH_PRESSED 0

#define DISPLAY_RESET_PIN 39

#define MAX_CAN_TIMEOUT 250

int i;
char tempData[2] = {0,0};

byte oldSwitchState;
byte newSwitchState;
byte Menu;
word DataLength;

void setup() {                
  
  pinMode(HORN_OUTPUT_PIN, OUTPUT);
  
  InitialiseCAN();
  
  Serial.begin(115200);
  
  Serial1.begin(330);
  
  delay(2500);				// OLED screen needs to be running before we start sending data to it.
  digitalWrite(36, HIGH);	// set a status LED on to show we are starting.


  newSwitchState = 7;
  oldSwitchState = 0;  
  Menu = 1;  
}

void readSwitches()
{
	if(USE_SWITCHES == 1)
	{
		oldSwitchState = newSwitchState;
		newSwitchState = Serial1.read();
		//To fix - somtimes does not read the switches properly:
		if(newSwitchState == 255)
			newSwitchState = oldSwitchState;
  
		Serial1.flush();
		
	}
	else
	{
		newSwitchState = 7;
		oldSwitchState = 7;
	}
}

void loop() 
{
  
  if(newSwitchState != oldSwitchState)
  {
      SendCommand(SET_GAUGE_MAX, 2, (char*)MSDataObjectList[Menu]._Max);
  
      delay(100);
  
      SendCommand(SET_GAUGE_TITLE, 4, (char*)MSDataObjectList[Menu]._Name);
      
      //This is the CAN ID to send to the MS to request data back.
      
      DataLength = MSDataObjectList[Menu]._Width;

  }  
    
  readSwitches();
  
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

   
   SendCommand(SEND_GAUGE_VALUE, DataLength, GetDataValueFromCAN(MSDataObjectList[Menu]._Offset));
   
   delay(50);
  
}
