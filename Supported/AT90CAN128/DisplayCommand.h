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
#define SEND_ERROR 3


#define CAN_TX_ERROR 1
#define CAN_RX_ERROR 2
#define ONE_WIRE_SWITCH_ERROR 3


void SendCommand(char ID, char Len, char* Data);
void SendError(char ErrorNum);


#endif // DisplayCommand_H
