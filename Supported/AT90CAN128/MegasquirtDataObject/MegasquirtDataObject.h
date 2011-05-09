//******************************************************************************
//MegasquirtDataObject.h
//Library for capturing information about a megasquirt data object (rpm etc...)
//Written by David Irving 6-03-2011
//******************************************************************************

#ifndef MegasquirtDataObject_H
#define MegasquirtDataObject_H

#include "WProgram.h"

class MegasquirtDataObject
{
	public:
		char* _Name;		//Name to display on a display
		char _Width;		//1 byte or 2 bytes?
		char _Offset;		//Offset from start of megasquirt telemetry data address
		char _Mult;			//Multiplying factor
		char _Div;			//Dividing factor
		//word _Data[128];	//Data history
		word _Max;			//Max limit for gauge
		word _Data;			//Temp for the moment as only gauge feature on display is working.
	
		MegasquirtDataObject(char* Name, char Width, char Offset, char Mult, char Div, word Max);
	private:

};



#endif // MegasquirtDataObject_H
