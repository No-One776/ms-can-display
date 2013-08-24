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
#include <TinyGPS.h>              //Nice small library to convert NMEA strings from the GPS to usefull information
#include <NewSoftSerial.h>
#include "floatToString.h"  //set to whatever is the location of floatToStrig


#define RXD 1
#define TXD 2 

#define ALIVE_LED 36

char Menu;                          //Global variable for which "Menu" item we are currently in.
char* tempChar;
float tempConverterGaugeFloat;
uOLED uoled; 

Metro UpdateGauge = Metro(100);       //Poll over CAN the MS every 100ms
Metro FlipMenu = Metro(5000);         //Flip the menu ever 5 seconds
Metro CheckSwitches = Metro(50);      //Check if a switch is pressed
Metro UpdateADCs = Metro(50);         //Check if a switch is pressed
Metro ImAlive = Metro(100);           //Indication software is running
Metro ReadGPS = Metro(250);           //Get data from GPS - store usefull info in RAM.

TinyGPS gps;

char tempSpeedString[4];
unsigned int tempSpeed;
unsigned int tempRPM;
unsigned int tempSpeed4thOld;
unsigned int tempSpeed5thOld;

unsigned int tempA2D1;

boolean SwitchPressed;
boolean GPSDataCollected;

int TempGPSChar;

NewSoftSerial DebugOut(RXD, TXD);

void setup() {                
  
  Serial1.begin(9600);
  DebugOut.begin(9600);
  
  InitialiseCAN();
  //InitialiseOneWireSwitches();

  
  if(USE_ONE_WIRE_SWITCHES)
    InitialiseOneWireSwitches();
  

  //Set startup menu item
  Menu = 6;  
  
  //Initiate OLED serial display
  fourdglFunctionsInit();
  
  //Draw gauge circle
  drawGaugeBackground();
  
  //Draw the gauge information for the defined first menu item
  UpdateGaugeDetails();
  
  SwitchPressed = false;
  GPSDataCollected = false;

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
  
  
  
  /*if (FlipMenu.check())
  {
        //this is actually really annoying in the car
        Menu++;
        if(Menu == MENU_MAX)
            Menu = 0;  
    
        UpdateGaugeDetails();  
        
  }*/

  if(ReadGPS.check())
  {
      //Add timeout and error counter to here!
      while ((Serial1.available() > 0) && GPSDataCollected == false)
      {
        TempGPSChar = Serial1.read();

        if (gps.encode(TempGPSChar))
        {
          GPSDataCollected = true;
        }
      }
  }
  
   
  if (CheckSwitches.check()) {
  		
      //switch with 1k pullup connected to ADC0 to cycle menu		
      tempA2D1 = analogRead(1);
      
      if(tempA2D1 < 200)		
      {		
        Menu++;		
        if(Menu == MENU_MAX)		
          Menu = 0;		
			
          UpdateGaugeDetails();		
          SwitchPressed = false;		
      }		
  }      

  
  //Update the gauge pointer and text data. (From whatever source, CAN, GPS, etc...)
  if (UpdateGauge.check()) {
  
    
    if(GPSDataCollected == true && Menu == 6)
    {
       DrawPointer((int)gps.f_speed_kmph(), MSDataObjectList[Menu]._Max, MSDataObjectList[Menu]._Conversion);
       GPSDataCollected = false;
    }
    
    /*if(MSDataObjectList[Menu]._Width == 1)
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
    }*/
  }
  
}
