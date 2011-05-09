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


class DisplayCommand
{
	public:
		char _StartChar;		//Name to display on a display
		char _ID;		//1 byte or 2 bytes?
		char _Len;		//Offset from start of megasquirt telemetry data address
		char* _Data;			//Dividing factor
		char _EndChar;
		
		DisplayCommand(char ID, char Len, char* Data);
		void SerialSend();
	private:

};



#endif // DisplayCommand_H
