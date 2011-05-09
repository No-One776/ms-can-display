//******************************************************************************
//DisplayCommand.cpp
//ibrary for commands to control the OLED display
//Written by David Irving 6-03-2011
//******************************************************************************

#include "WProgram.h"
#include "DisplayCommand.h"

DisplayCommand::DisplayCommand(char ID, char Len, char* Data)
{
	_ID = ID;
	_Len = Len;
	_Data = Data;
	
	_StartChar = START_CHAR;
	_EndChar = END_CHAR;
}

void DisplayCommand::SerialSend()
{
	int i;
	
	Serial.write(_StartChar);
	Serial.write(_ID);
	Serial.write(_Len);
	
	for(i = 0; i < _Len; i++)
	{
		Serial.write(_Data[i]);
	}
	Serial.write(_EndChar);


}