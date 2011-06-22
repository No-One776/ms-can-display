//******************************************************************************
//DisplayCommand.c
//ibrary for commands to control the OLED display
//Written by David Irving 6-03-2011
//******************************************************************************

#include "DisplayCommand.h"

void SendCommand(char ID, char Len, char* Data)
{
	int i;
	
	Serial.write(START_CHAR);
	Serial.write(ID);
	Serial.write(Len);
	
	for(i = 0; i < Len; i++)
	{
		Serial.write(Data[i]);
	}
	Serial.write(END_CHAR);


}
