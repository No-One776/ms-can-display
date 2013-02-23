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


char Menu;                          //Global variable for which "Menu" item we are currently in.
char* tempChar;
float tempConverterGaugeFloat;
uOLED uoled; 

Metro GetCANData = Metro(100);      //Poll over CAN the MS every 100ms
Metro updateSpeed = Metro(200);      //Poll over CAN the MS every 100ms
Metro FlipMenu = Metro(5000);       //Flip the menu ever 5 seconds
Metro CheckSwitches = Metro(50);    //Check if a switch is pressed
Metro UpdateADCs = Metro(50);    //Check if a switch is pressed

#define MENU_MAX 6

char tempSpeedString[4];
unsigned int tempSpeed;
unsigned int tempRPM;
unsigned int tempSpeed4thOld;
unsigned int tempSpeed5thOld;

unsigned int tempA2D0;
unsigned int tempA2D1;
unsigned int tempOldA2D;

void setup() {                
  
  
  
  InitialiseCAN();
  //InitialiseOneWireSwitches();
  
  //Serial.begin(115200);
  
  if(USE_ONE_WIRE_SWITCHES)
    InitialiseOneWireSwitches();
  
  //delay(2500);				// OLED screen needs to be running before we start sending data to it.
  //digitalWrite(36, HIGH);	// set a status LED on to show we are starting.

  //Set startup menu item
  Menu = 0;  
  
  fourdglFunctionsInit();
  drawGaugeBackground();
  UpdateGaugeDetails();
  
  

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
        /* this is actually really annoying in the car
        Menu++;
        if(Menu == MENU_MAX)
            Menu = 0;  
    
        UpdateGaugeDetails();  
        */
    }
  }  
  
  if (GetCANData.check()) {
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
  
  if(updateSpeed.check())  {
    
    
    tempChar = GetDataValueFromCAN(MSDataObjectList[RPM_DATA_OBJECT]._Offset);
    tempRPM = ((byte)tempChar[0] * 256) + (byte)tempChar[1];
    
    //clear old numbers
    itoa(tempSpeed4thOld,tempSpeedString,10);
    uoled.Text(0,0,SMALL_FONT,BLACK,tempSpeedString,0);

    itoa(tempSpeed5thOld,tempSpeedString,10);
    uoled.Text(18,0,SMALL_FONT,BLACK,tempSpeedString,0);
    
    //calc 4th gear speed          
    tempSpeed = tempRPM * 10;  //lazy - replace with lookup
    tempSpeed = tempSpeed / 403;
    
    tempSpeed4thOld = tempSpeed;
    
    //print 4th speed
    itoa(tempSpeed,tempSpeedString,10);
    uoled.Text(0,0,SMALL_FONT,WHITE,tempSpeedString,0);
 
     
    //calc 5th gear speed
    tempSpeed = tempRPM * 10;  //lazy - replace with lookup
    tempSpeed = tempSpeed / 328;
    
    //print 5th speed
    itoa(tempSpeed,tempSpeedString,10);
    uoled.Text(18,0,SMALL_FONT,WHITE,tempSpeedString,0);
    
    tempSpeed5thOld = tempSpeed;    
  }
  
  if(UpdateADCs.check())  {
    
    if(tempA2D0 != analogRead(0))
    {

      //clear old numbers
      itoa(tempA2D0,tempSpeedString,10);
      uoled.Text(0,14,SMALL_FONT,BLACK,tempSpeedString,0);
    
      tempA2D0 = analogRead(0);
      itoa(tempA2D0,tempSpeedString,10);
      uoled.Text(0,14,SMALL_FONT,WHITE,tempSpeedString,0);
    }
    
    
    if(tempA2D0 > 200)
    {
      Menu++;
      if(Menu == MENU_MAX)
        Menu = 0;  
        
       UpdateGaugeDetails();  
    }   
    
    if(tempA2D1 != analogRead(1))
    {
      //clear old numbers
      itoa(tempA2D1,tempSpeedString,10);
      uoled.Text(18,14,SMALL_FONT,BLACK,tempSpeedString,0);
    
      tempA2D1 = analogRead(1);
      itoa(tempA2D1,tempSpeedString,10);Z}
