/*

AT90CAN128 CAN to Megasquirt Display driver

Polls Megasquirt over CAN

Reads switches over one wire bus

Sends commands to display data on 4dgl display.

Controls a small low side driver to switch the horn relay.

 */


#include "./DisplayCommand.h"
#include "./MSDataObject.h"
#include "./Configuration.h"
#include "./CANFunctions.h"
#include "./OneWireSwitches.h"  
#include <Metro.h>                //Metro library needs to be installed into your Arduino libs folder.


char Menu;                          //Global variable for which "Menu" item we are currently in.

Metro GetCANData = Metro(100);      //Poll over CAN the MS every 100ms 
Metro FlipMenu = Metro(5000);       //Flip the menu ever 5 seconds
Metro CheckSwitches = Metro(50);    //Check if a switch is pressed

#define MENU_MAX 6

void setup() {                
  
  
  
  InitialiseCAN();
  //InitialiseOneWireSwitches();
  
  Serial.begin(115200);
  
  if(USE_ONE_WIRE_SWITCHES)
    InitialiseOneWireSwitches();
  
  delay(2500);				// OLED screen needs to be running before we start sending data to it.
  digitalWrite(36, HIGH);	// set a status LED on to show we are starting.

  //Set startup menu item
  Menu = 0;  
  UpdateGaugeDetails();
  

}

void UpdateGaugeDetails()
{
  char tempChar[2];
  
  delay(100);
  tempChar[1] = MSDataObjectList[Menu]._Max % 256;
  tempChar[0] = (MSDataObjectList[Menu]._Max / 256) % 256;
  SendCommand(SET_GAUGE_MAX, 2, tempChar);
  delay(100);
  SendCommand(SET_GAUGE_TITLE, 4, (char*)MSDataObjectList[Menu]._Name);  
}


void loop() 
{
  
  if(USE_ONE_WIRE_SWITCHES)
  {
    if(CheckSwitches.check())
    {
      switch(readSwitches())
      {
        case SWITCH_UP:
           Menu++;
          if(Menu == MENU_MAX)
              Menu = 0;
              
          UpdateGaugeDetails();
        break;

        case SWITCH_DOWN:     
             
          if(Menu == 0)
              Menu = (MENU_MAX-1);
          else
             Menu--; 
         
         UpdateGaugeDetails();              
        break;
      }
    }
  }
  else  //No switches so just flip the menu every 5 seconds so the user can see all gauges
  {  
    if (FlipMenu.check())
    {
        Menu++;
        if(Menu == MENU_MAX)
            Menu = 0;  
    
        UpdateGaugeDetails();  
    }
  }  
  
  if (GetCANData.check()) {
    //char TempChar[3];
    //sprintf (TempChar, "%.2F", (atof(GetDataValueFromCAN(MSDataObjectList[Menu]._Offset)) * MSDataObjectList[Menu]._Mult));
    //SendCommand(SEND_GAUGE_VALUE, MSDataObjectList[Menu]._Width, TempChar);
    SendCommand(SEND_GAUGE_VALUE, MSDataObjectList[Menu]._Width, GetDataValueFromCAN(MSDataObjectList[Menu]._Offset));
  }
}
