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
//#include "./OneWireSwitches.h"  //One wire switches disabled for the moment.
#include <Metro.h>                //Metro library needs to be installed into your Arduino libs folder.


char Menu;                          //Global variable for which "Menu" item we are currently in.

Metro GetCANData = Metro(100);      //Poll over CAN the MS every 100ms 
Metro FlipMenu = Metro(5000);     //Flip the menu ever 5 seconds

#define MENU_MAX 4

void setup() {                
  
  
  
  InitialiseCAN();
  //InitialiseOneWireSwitches();
  
  Serial.begin(115200);
  
  
  
  delay(2500);				// OLED screen needs to be running before we start sending data to it.
  digitalWrite(36, HIGH);	// set a status LED on to show we are starting.

  //Set startup menu item
  Menu = 1;  
  UpdateGaugeDetails();
  

}

void UpdateGaugeDetails()
{
  delay(200);
  SendCommand(SET_GAUGE_MAX, 2, (char*)MSDataObjectList[Menu]._Max);
  delay(200);
  SendCommand(SET_GAUGE_TITLE, 4, (char*)MSDataObjectList[Menu]._Name);  
}


void loop() 
{
  
  if (FlipMenu.check())
  {
      Menu++;
      if(Menu > MENU_MAX)
          Menu = 1;  
    
      UpdateGaugeDetails();  
  }  
  
  if (GetCANData.check())
    SendCommand(SEND_GAUGE_VALUE, MSDataObjectList[Menu]._Width, GetDataValueFromCAN(MSDataObjectList[Menu]._Offset));
   
}
