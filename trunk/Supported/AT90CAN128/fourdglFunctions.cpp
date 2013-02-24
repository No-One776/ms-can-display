

#include "./fourdglFunctions.h"



//uOLED uoled;                    // create an instance of the uOLED class
int i;
char tempString[8];
char tempDecimal[2];
char tempStringOld[8];
word colour;
float oldTempFloat;
float tempFloat;
int oldData;


void fourdglFunctionsInit()
{
        
	uoled.begin(39,256000, &Serial); //init serial comms to the display. Also toggles reset pin on display but not connected in this case

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


void DrawPointer(int data, int maxValue, conversion conversionType)
{

  
  
  tempFloat = (float)data / maxValue * 1.60;
  tempFloat = tempFloat + 0.70;  
  
  if(tempFloat != oldTempFloat)
  {
      uoled.Line(GAUGE_CENTRE_X,GAUGE_CENTRE_Y, (int)(GAUGE_CENTRE_X + GAUGE_NEEDLE_LENGTH*cos(oldTempFloat*PI)),(int)(GAUGE_CENTRE_Y + GAUGE_NEEDLE_LENGTH*sin(oldTempFloat*PI)),BLACK);  
      uoled.Line(GAUGE_CENTRE_X,GAUGE_CENTRE_Y, (int)(GAUGE_CENTRE_X + GAUGE_NEEDLE_LENGTH*cos(tempFloat*PI)),(int)(GAUGE_CENTRE_Y + GAUGE_NEEDLE_LENGTH*sin(tempFloat*PI)),WHITE); 
      oldTempFloat = tempFloat;
      
      uoled.Text(6,2,LARGE_FONT,BLACK,tempStringOld,0);
      
      switch(conversionType)
      {
        case NONE:
          itoa(data,tempString,10);
          break;
      
        case DIVBY10:      //Create a decimal string structure to print
          itoa(data/10,tempString,10);
          strcat(tempString, ".");
          itoa(data%10,tempDecimal,10);
          strcat(tempString, tempDecimal);
          break;
        
        case DEGFTOC:
          data = data - 320;
          data = data * 0.5555;
          
          itoa(data/10,tempString,10);
          strcat(tempString, ".");
          itoa(data%10,tempDecimal,10);
          strcat(tempString, tempDecimal);
          break;
        
        case FOURTHTHGEAR:
          //calc 4th gear speed          
          data = data * 10;  //lazy - replace with lookup
          data = data / 403;
          itoa(data,tempString,10);
          break;
          
        case FIFTHTHGEAR:
          //calc 4th gear speed          
          data = data * 10;  //lazy - replace with lookup
          data = data / 328;
          itoa(data,tempString,10);
          break;
          
       
        
        default:
          itoa(data,tempString,10);
      }
      
      uoled.Text(6,2,LARGE_FONT,WHITE,tempString,0);

      strcpy(tempStringOld, tempString);

      uoled.Circle(GAUGE_CENTRE_X,GAUGE_CENTRE_Y,5, WHITE, FULL);
  }

}


void intDebug(int data, int row)
{
  uoled.Cls(); 
  itoa(data,tempString,10);
  uoled.Text(0,row,SMALL_FONT,WHITE,tempString,0); 
  
  
}

