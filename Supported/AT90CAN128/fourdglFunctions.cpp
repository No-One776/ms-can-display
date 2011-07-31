

#include "./fourdglFunctions.h"


//uOLED uoled;                    // create an instance of the uOLED class
int i;
char tempString[8];
word colour;
float oldTempFloat;
float tempFloat;
int oldData;


void fourdglFunctionsInit()
{
	uoled.begin(39,256000, &Serial);// with the reset line connected to pin 8 and a serial speed of 256000 
									// using hardware serial port1 (options are &Serial, &Serial1, &Serial2 and &serial3 on a Arduino Mega)
									// reset and initialize the display



}


void drawGaugeBackground()
{
	uoled.Circle(GAUGE_CENTRE_X,GAUGE_CENTRE_Y,GAUGE_OUTER_CIRCLE_DIAMETER, WHITE, EMPTY );  //Draw the Gauge Face
  uoled.Rectangle(0, 115, 128, 128, BLACK, FULL); //Clear off the bottom of the circle.
  
  for(i = 0; i < 11; i++)
  {
    tempFloat = 0.70 + ((float)i*0.160);
    
    colour = WHITE;
    
    if (i >= 8 && i < 11)
      colour = RED;
      
    if (i >= 6 && i < 8)
      colour = ORANGE;
    
    if (i >= 4 && i < 6)
      colour = YELLOW;
      
    uoled.Line((int)(GAUGE_CENTRE_X + (GAUGE_OUTER_CIRCLE_DIAMETER-GAUGE_TICK_LENGTH)*cos(tempFloat*PI)),(int)(GAUGE_CENTRE_Y + (GAUGE_OUTER_CIRCLE_DIAMETER-GAUGE_TICK_LENGTH)*sin(tempFloat*PI)), (int)(GAUGE_CENTRE_X + (GAUGE_OUTER_CIRCLE_DIAMETER-1)*cos(tempFloat*PI)),(int)(GAUGE_CENTRE_Y + (GAUGE_OUTER_CIRCLE_DIAMETER-1)*sin(tempFloat*PI)),colour);
  }

}


void DrawPointer(int data, int maxValue)
{

  
  
  tempFloat = (float)data / maxValue * 1.60;
  tempFloat = tempFloat + 0.70;  
  
  if(tempFloat != oldTempFloat)
  {
      uoled.Line(GAUGE_CENTRE_X,GAUGE_CENTRE_Y, (int)(GAUGE_CENTRE_X + GAUGE_NEEDLE_LENGTH*cos(oldTempFloat*PI)),(int)(GAUGE_CENTRE_Y + GAUGE_NEEDLE_LENGTH*sin(oldTempFloat*PI)),BLACK);  
      uoled.Line(GAUGE_CENTRE_X,GAUGE_CENTRE_Y, (int)(GAUGE_CENTRE_X + GAUGE_NEEDLE_LENGTH*cos(tempFloat*PI)),(int)(GAUGE_CENTRE_Y + GAUGE_NEEDLE_LENGTH*sin(tempFloat*PI)),WHITE); 
      oldTempFloat = tempFloat;
      
      itoa(oldData,tempString,10);
      uoled.Text(8,4,SMALL_FONT,BLACK,tempString,0);
      
      itoa(data,tempString,10);
      uoled.Text(8,4,SMALL_FONT,WHITE,tempString,0);
      oldData = data;

      uoled.Circle(GAUGE_CENTRE_X,GAUGE_CENTRE_Y,5, WHITE, FULL);
  }

}


void intDebug(int data, int row)
{
  uoled.Cls(); 
  itoa(data,tempString,10);
  uoled.Text(0,row,SMALL_FONT,WHITE,tempString,0); 
  
  
}

