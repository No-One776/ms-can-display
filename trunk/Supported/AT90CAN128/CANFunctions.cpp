//******************************************************************************
//CANFunctions.cpp
//CAN functions for interfacing with the megasquirt.
//Written by David Irving 25-06-2011
//******************************************************************************

#include "CANFunctions.h"

unsigned char tx_remote_buffer[8] = {0,0,2,0,0,0,0,0};
st_cmd_t tx_remote_msg;

unsigned char rx_remote_buffer[8] = {0,0,0,0,0,0,0,0};
st_cmd_t rx_remote_msg;

void InitialiseCAN()
{
  
  CAN.set_baudrate(500);
  CAN.init(0);  
  
  tx_remote_msg.pt_data = &tx_remote_buffer[0];
  tx_remote_msg.status = 0;
  
  rx_remote_msg.pt_data = &rx_remote_buffer[0];
  rx_remote_msg.status = 0;

}


char* GetDataValueFromCAN(int Offset)
{
  
  tx_remote_msg.id.ext = 36920 + (Offset * 262144);
  
  tx_remote_msg.ctrl.ide = 1;
  tx_remote_msg.ctrl.rtr = 1;
  tx_remote_msg.dlc = 3;
  tx_remote_msg.cmd = CMD_TX_DATA;  
  rx_remote_msg.cmd = CMD_RX_DATA;
  
  //Need some error management here!!

  // --- Tx Command
  while(CAN.cmd(&tx_remote_msg) != CAN_CMD_ACCEPTED);					

  while(CAN.get_status(&tx_remote_msg) == CAN_STATUS_NOT_COMPLETED);
  
  
  // --- Rx Command
  while(CAN.cmd(&rx_remote_msg) != CAN_CMD_ACCEPTED);

  while(CAN.get_status(&rx_remote_msg) == CAN_STATUS_NOT_COMPLETED); 	 

  return (char*)rx_remote_msg.pt_data;
}

