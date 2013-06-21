/*

AT90CAN128 CAN to Megasquirt Display driver

Polls Megasquirt over CAN

Reads switches over one wire bus

Sends commands to display data on 4dgl display.

Controls a small low side driver to switch the horn relay.

 */

#include <colors.h>
//#include <uOLED.h>
#include "./DisplayCommand.h"
#include "./MSDataObject.h"
#include "./Configuration.h"
#include "./CANFunctions.h"
#include "./OneWireSwitches.h"  
#include "./fourdglFunctions.h"
#include <Metro.h>                //Metro library needs to be installed into your Arduino libs folder.

#define ALIVE_LED 36

char Menu;                          //Global variable for which "Menu" item we are currently in.
char* tempChar;
float tempConverterGaugeFloat;
uOLED uoled; 

Metro UpdateGauge = Metro(100);      //Poll over CAN the MS every 100ms
Metro FlipMenu = Metro(5000);       //Flip the menu ever 5 seconds
Metro CheckSwitches = Metro(50);    //Check if a switch is pressed
Metro UpdateADCs = Metro(50);    //Check if a switch is pressed
Metro ImAlive = Metro(100);    //Indication software is running



char tempSpeedString[4];
unsigned int tempSpeed;
unsigned int tempRPM;
unsigned int tempSpeed4thOld;
unsigned int tempSpeed5thOld;

unsigned int tempA2D0;
unsigned int tempA2D1;
unsigned int tempOldA2D;

boolean SwitchPressed;


void setup() {                
  
  
  
  InitialiseCAN();
  //InitialiseOneWireSwitches();

  
  if(USE_ONE_WIRE_SWITCHES)
    InitialiseOneWireSwitches();
  

  //Set startup menu item
  Menu = 0;  
  
  //Initiate OLED serial display
  fourdglFunctionsInit();
  
  //Draw gauge circle
  drawGaugeBackground();
  
  //Draw the gauge information for the defined first menu item
  UpdateGaugeDetails();
  
  SwitchPressed = false;

  pinMode(ALIVE_LED, OUTPUT);

}


void UpdateGaugeDetails()
{
  uoled.Cls();
  uoled.Text(8,12,SMALL_FONT,WHITE,(char*)MSDataObjectList[Menu]._Name,0);  
  uoled.Text(8,13,SMALL_FONT,WHITE,(char*)MSDataObjectList[Menu]._Units,0); 
  drawGaugeBackground(); 
}


void loop() 
{
  
  //Toggle the status LED - on a CRO this shows how poorly the software scheduler is maintaining the schedules.
  if(ImAlive.check())
  {
      digitalWrite(ALIVE_LED,!digitalRead(ALIVE_LED)); //toggle status LED
  }
  
  
  
  if (FlipMenu.check())
  {
        //this is actually really annoying in the car
        Menu++;
        if(Menu == MENU_MAX)
            Menu = 0;  
    
        UpdateGaugeDetails();  
        
  }

  
  //Update the gauge pointer and text data. (From whatever source, CAN, GPS, etc...)
  if (UpdateGauge.check()) {
    //char TempChar[3];
    //sprintf (TempChar, "%.2F", (atof(GetDataValueFromCAN(MSDataObjectList[Menu]._Offset)) * MSDataObjectList[Menu]._Mult));
    //SendCommand(SEND_GAUGE_VALUE, MSDataObjectList[Menu]._Width, TempChar);
    //SendCommand(SEND_GAUGE_VALUE, MSDataObjectList[Menu]._Width, GetDataValueFromCAN(MSDataObjectList[Menu]._Offset));
    if(MSDataObjectList[Menu]._Width == 1)
    {
      tempChar = GetDataValueFromCAN(MSDataObjectList[Menu]._Offset);
      DrawPointer((byte)tempChar[0], MSDataObjectList[Menu]._Max, MSDataObjectList[Menu]._Conversion);
    }
    
    if(MSDataObjectList[Menu]._Width == 2)
    {
      tempChar = GetDataValueFromCAN(MSDataObjectList[Menu]._Offset);
      tempConverterGaugeFloat = ((byte)tempChar[0] * 256) + (byte)tempChar[1];
      //tempConverterGaugeFloat = tempConverterGaugeFloat * MSDataObjectList[Menu]._Mult;
      DrawPointer(tempConverterGaugeFloat, MSDataObjectList[Menu]._Max, MSDataObjectList[Menu]._Conversion);
    }
  }
  
}
