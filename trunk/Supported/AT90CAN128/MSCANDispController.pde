#include <DisplayCommand.h>
#include <MegasquirtDataObject.h>


/*

Bare bones proof of concept example.

Polls Megasquirt over CAN

Reads switches over one wire bus

Sends commands to display data on 4dgl display.


 */

#define SWITCH_UP 6
#define SWITCH_DOWN  3

MegasquirtDataObject secl("SECL",1,1,1,1,255);
MegasquirtDataObject rpm("RPM",2,6,1,1,8000);


DisplayCommand GaugeValue(SEND_GAUGE_VALUE, 2,0);
DisplayCommand GaugeTitle(SET_GAUGE_TITLE, 4, 0);
DisplayCommand GaugeMax(SET_GAUGE_MAX, 2, 0);

unsigned char tx_remote_buffer[8] = {0,0,2,0,0,0,0,0};
st_cmd_t tx_remote_msg;

unsigned char rx_remote_buffer[8] = {0,0,0,0,0,0,0,0};
st_cmd_t rx_remote_msg;

int i;
char tempData[2] = {0,0};

byte oldSwitchState;
byte newSwitchState;
byte Menu;



//PIN 36 = PTE Pin 4 = STAT LED on OLIMEX AT90CAN128 board.
void setup() {                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
  pinMode(36, OUTPUT);
  CAN.set_baudrate(500);
  CAN.init(0);  
  
  tx_remote_msg.pt_data = &tx_remote_buffer[0];
  tx_remote_msg.status = 0;

  rx_remote_msg.pt_data = &rx_remote_buffer[0];
  rx_remote_msg.status = 0;
  
  Serial.begin(115200);
  
  Serial1.begin(330);
  
  delay(2500);

  digitalWrite(36, HIGH);   // set the LED on
  
  Menu = 1;
}

void doCANStuff()
{
  tx_remote_msg.ctrl.ide = 1;
  tx_remote_msg.ctrl.rtr = 1;
  tx_remote_msg.dlc = 3;
  tx_remote_msg.cmd = CMD_TX_DATA;
  
  rx_remote_msg.cmd = CMD_RX_DATA;
  
  // --- Tx Command
  while(CAN.cmd(&tx_remote_msg) != CAN_CMD_ACCEPTED);
  while(CAN.get_status(&tx_remote_msg) == CAN_STATUS_NOT_COMPLETED);

  // --- Rx Command
  while(CAN.cmd(&rx_remote_msg) != CAN_CMD_ACCEPTED);
  while(CAN.get_status(&rx_remote_msg) == CAN_STATUS_NOT_COMPLETED);   
  
}


void loop() 
{
  oldSwitchState = newSwitchState;
  newSwitchState = Serial1.read();
  Serial1.flush();

  //read switches and build menu.
  
  if(newSwitchState != oldSwitchState)
  {
    switch(newSwitchState)
    {
      case SWITCH_UP:
      Menu++;
      break;
    
      case SWITCH_DOWN:
      Menu--;
      break;
    }
  }

  if(Menu > 4)
    Menu = 1;
    
  if(Menu < 1)
    Menu = 4;
  
  if(newSwitchState != oldSwitchState)
  {
    switch(Menu)
    {
      case 1:
 
      tempData[0] = 0x00;
      tempData[1] = 0xFF;

      GaugeMax._Data = (char*)tempData;
      GaugeMax.SerialSend();
  
      delay(100);
  
      GaugeTitle._Data = "SECL";
      GaugeTitle.SerialSend();
      
      tx_remote_msg.id.ext = 36920 + (secl._Offset * 262144);
      GaugeValue._Len = 1;
 
      break;
    
      case 2:

      tempData[0] = 0x1F;
      tempData[1] = 0x40;

      GaugeMax._Data = (char*)tempData;
      GaugeMax.SerialSend();
  
      delay(100);
  
      GaugeTitle._Data = "RPM ";
      GaugeTitle.SerialSend();
 
      tx_remote_msg.id.ext = 36920 + (rpm._Offset * 262144);
      GaugeValue._Len = 2;

      break;



    }
  }
 
   doCANStuff();
  
   
   //rx_remote_msg.pt_data[0] = 0;
   //GaugeValue._Len = 1;
   GaugeValue._Data = (char*)rx_remote_msg.pt_data;
   GaugeValue.SerialSend();   
 
  delay(100);
  
}
