//******************************************************************************
//Display.h
//Library for commands to control the OLED display
//Written by David Irving 6-03-2011
//******************************************************************************

#ifndef DisplayCommand_H
#define DisplayCommand_H

#include "WProgram.h"


#define START_CHAR 0x55
#define END_CHAR 0xAA

#define SEND_GAUGE_VALUE 0
#define SET_GAUGE_TITLE 1
#define SET_GAUGE_MAX 2


void SendCommand(char ID, char Len, char* Data);



#endif // DisplayCommand_H
