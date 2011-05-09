//******************************************************************************
//MegasquirtDataObject.cpp
//Library for capturing information about a megasquirt data object (rpm etc...)
//Written by David Irving 6-03-2011
//******************************************************************************

#include "WProgram.h"
#include "MegasquirtDataObject.h"

MegasquirtDataObject::MegasquirtDataObject(char* Name, char Width, char Offset, char Mult, char Div, word Max)
{
	_Name = Name;
	_Width = Width;
	_Offset = Offset;
	_Mult = Mult;
	_Div = Div;
	_Max = Max;

}