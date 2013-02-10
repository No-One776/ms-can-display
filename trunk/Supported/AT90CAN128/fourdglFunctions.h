#include <uOLED.h>              
#include <colors.h>
#include <float.h>
#include <stdlib.h>
#include "./MSDataObject.h"

#define GAUGE_CENTRE_X 63
#define GAUGE_CENTRE_Y 63
#define GAUGE_NEEDLE_LENGTH 55
#define GAUGE_OUTER_CIRCLE_DIAMETER 63
#define GAUGE_TICK_LENGTH 5

extern uOLED uoled;                    // create an instance of the uOLED class

void fourdglFunctionsInit();
void drawGaugeBackground();
void DrawPointer(int data, int maxValue, conversion conversionType);
void intDebug(int data, int row);
