#include "./DisplayCommand.h"
#include "./MSDataObject.h"
#include "./Configuration.h"


/*

Bare bones proof of concept example.

Polls Megasquirt over CAN

Reads switches over one wire bus

Sends commands to display data on 4dgl display.

Controls a small low side driver to switch the horn relay.

 */

#define SWITCH_UP 6
#define SWITCH_DOWN  3
#define SWITCH_HORN 5
#define ALL_SWITCH_PRESSED 0

#define DISPLAY_RESET_PIN 39

unsigned char tx_remote_buffer[8] = {0,0,2,0,0,0,0,0};
st_cmd_t tx_remote_msg;

unsigned char rx_remote_buffer[8] = {0,0,0,0,0,0,0,0};
st_cmd_t rx_remote_msg;

int i;
char tempData[2] = {0,0};

byte oldSwitchState;
byte newSwitchState;
byte Menu;
word DataLength;


void setup() {                
  
  pinMode(HORN_OUTPUT_PIN, OUTPUT);
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
  newSwitchState = 7;
  oldSwitchState = 0;  
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
  while(CAN.cmd(&tx_remote_msg) != CAN_CMD_ACCEPTED);					//Add timeout so software does not lock up when MS not connected.
  while(CAN.get_status(&tx_remote_msg) == CAN_STATUS_NOT_COMPLETED);   //Add timeout so software does not lock up when MS not connected.

  // --- Rx Command
  while(CAN.cmd(&rx_remote_msg) != CAN_CMD_ACCEPTED);					//Add timeout so software does not lock up when MS not connected.
  while(CAN.get_status(&rx_remote_msg) == CAN_STATUS_NOT_COMPLETED); 	//Add timeout so software does not lock up when MS not connected. 


}

void readSwitches()
{
	if(USE_SWITCHES == 1)
	{
		oldSwitchState = newSwitchState;
		newSwitchState = Serial1.read();
		//To fix - somtimes does not read the switches properly:
		if(newSwitchState == 255)
			newSwitchState = oldSwitchState;
  
		Serial1.flush();
		
	}
	else
	{
		newSwitchState = 7;
		oldSwitchState = 7;
	}
}

void loop() 
{
  
  if(newSwitchState != oldSwitchState)
  {
      SendCommand(SET_GAUGE_MAX, 2, (char*)MSDataObjectList[Menu]._Max);
  
      delay(100);
  
      SendCommand(SET_GAUGE_TITLE, 4, (char*)MSDataObjectList[Menu]._Name);
      
      //This is the CAN ID to send to the MS to request data back.
      tx_remote_msg.id.ext = 36920 + (MSDataObjectList[Menu]._Offset * 262144);
      DataLength = MSDataObjectList[Menu]._Width;

  }  
    
  readSwitches();
  
  if(newSwitchState != oldSwitchState)
  {
    switch(newSwitchState)
    {
      case SWITCH_UP:
          Menu++;
          if(Menu > 3)
            Menu = 0;
          
	  digitalWrite(HORN_OUTPUT_PIN, 0);
          digitalWrite(DISPLAY_RESET_PIN, 0);
      break;
    
      case SWITCH_DOWN:
      if(Menu == 0)
        Menu = 3;
      else
        Menu--;
      
      digitalWrite(HORN_OUTPUT_PIN, 0);
      digitalWrite(DISPLAY_RESET_PIN, 0);
      break;

      case SWITCH_HORN:
      digitalWrite(HORN_OUTPUT_PIN, 1);
      digitalWrite(DISPLAY_RESET_PIN, 0);
      break;
      
      case ALL_SWITCH_PRESSED:
      digitalWrite(DISPLAY_RESET_PIN, 1);
      digitalWrite(HORN_OUTPUT_PIN, 0);
      break;
      
      default:
      digitalWrite(HORN_OUTPUT_PIN, 0);
      digitalWrite(DISPLAY_RESET_PIN, 0);
    }
  }

  
   doCANStuff();
  
   SendCommand(SEND_GAUGE_VALUE, DataLength, (char*)rx_remote_msg.pt_data);
 
   delay(50);
  
}
