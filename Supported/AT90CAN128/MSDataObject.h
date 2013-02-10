//******************************************************************************
//MSDataObject.h
//Library for constant information about a megasquirt data object (rpm etc...)
//Later could be auto generated from MS config file.
//Written by David Irving 6-03-2011
//******************************************************************************

#ifndef MSDataObject_H
#define MSDataObject_H

#include "WProgram.h"

enum conversion {
  NONE,
  DIVBY10,
  DEGFTOC
};

struct MSDataObject
{
	char	    _Name[5];	        //Name to display on a display
        char        _Units[4];          //Units to display depending on display model
	char 	    _Width;		//1 byte or 2 bytes or?
	char 	    _Offset;	        //Offset from start of megasquirt telemetry data address
	conversion  _Conversion;	//Multiplying factor
	word 	    _Max;		//Max limit for gauge
};

#define RPM_DATA_OBJECT 1

const MSDataObject MSDataObjectList[6] =
{
	{"SECL","s  ",1,1,NONE,255},
	{"RPM ","rpm",2,6,NONE,8000},
        {"MAP ","kpa",2,18,DIVBY10,2550},
	{"MAT ","C  ",2,20,DEGFTOC,3000},
	{"CLT ","C  ",2,22,DEGFTOC,30000},
	{"AFR1","afr",2,28,DIVBY10,200}
};


#endif // MSDataObject_H
