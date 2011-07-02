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
        char    _Units[4];         //Units to display depending on display model
	char 	_Width;		//1 byte or 2 bytes or?
	char 	_Offset;	//Offset from start of megasquirt telemetry data address
	float 	_Mult;		//Multiplying factor
	word 	_Max;		//Max limit for gauge
};


const MSDataObject MSDataObjectList[6] =
{
	{"SECL","s  ",1,1,1,255},
	{"RPM ","rpm",2,6,1,8000},
        {"MAP ","kpa",2,18,.1,2550},
	{"MAT ","F  ",2,20,.1,3000},
	{"CLT ","F  ",2,22,.1,3000},
	{"AFR1","afr",2,28,.1,200}
};


#endif // MSDataObject_H
