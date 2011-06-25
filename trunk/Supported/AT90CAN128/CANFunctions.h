//******************************************************************************
//CANFunctions.h
//CAN functions for interfacing with the megasquirt.
//Written by David Irving 25-06-2011
//******************************************************************************

#ifndef CANFunctions_H
#define CANFunctions_H

#include "WProgram.h"

void InitialiseCAN();
char* GetDataValueFromCAN(int Offset);


#endif // CANFunctions_H
