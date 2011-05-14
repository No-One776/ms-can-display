//******************************************************************************
//MSDataObject.h
//Library for constant information about a megasquirt data object (rpm etc...)
//Later could be auto generated from MS config file.
//Written by David Irving 6-03-2011
//******************************************************************************

#ifndef MSDataObject_H
#define MSDataObject_H

#include "WProgram.h"

struct MSDataObject
{
	char	_Name[5];	//Name to display on a display
	char 	_Width;		//1 byte or 2 bytes or?
	char 	_Offset;	//Offset from start of megasquirt telemetry data address
	char 	_Mult;		//Multiplying factor
	char 	_Div;		//Dividing factor
	word 	_Max;		//Max limit for gauge
};


const MSDataObject MSDataObjectList[4] =
{
	{"SECL",1,1,1,1,255},
	{"RPM ",2,6,1,1,8000},
	{"MAT ",2,20,1,1,65535},
	{"CLT ",2,22,1,1,65535}
};


#endif // MSDataObject_H
