/*

	Device: 8 Pin ATTINY85.
	
	Purpose: Reads in 3 switches and sends switch state via TX to main display controller.
	
	Written for Arduino environment.

 */

#include <SoftwareSerial.h>

 
#define rxPin 10 //Somthing not used. (RX not used, comms is uni directional)
#define txPin 3

SoftwareSerial mySerial =  SoftwareSerial(rxPin, txPin);
char val = 0;
char i = 0;

void setup() {                

  pinMode(0, INPUT);		//Switch 1
  pinMode(1, INPUT); 		//Switch 2
  pinMode(2, INPUT); 		//Switch 3
  pinMode(rxPin, INPUT); 	
  pinMode(txPin, OUTPUT);
  mySerial.begin(300);		//low speed comms to reduce error. 
  
 /* the ATINY85 has an internall clock and is communicating with the ATCAN128 running on a crystal. 
		Because of this there is significant potential for error with the communications. */
  
}

void loop() {
  
  
  /* If a switch is closed, drawing current through the uC pullup, this sucks charge out of the supply buffering capacitors.
		So the caps don't have to be so big, the pullups are only turned on for the breif moment the switch needs to be read. */
  
  
  val = 0;
  
  digitalWrite(0, HIGH);   			// Pullup for switch 1 on.
  //delay(1);               		// On Polling delay. (seems to not be needed.)
  val = val + digitalRead(0);		// Read switch status.
  digitalWrite(0, LOW);    			// Pullup for switch 2 off.
  
  delay(3);
  
  digitalWrite(1, HIGH);   			// Pullup for switch 2 on.
  //delay(1);               		// On Polling delay. (seems to not be needed.)
  val = val + (digitalRead(1)*2);	// Read switch status.
  digitalWrite(1, LOW);    			// Pullup for switch 2 off.
  
  delay(3);
  
  digitalWrite(2, HIGH);   			// Pullup for switch 3 on.
  //delay(1);               		// On Polling delay. (seems to not be needed.)
  val = val + (digitalRead(2)*4);	// Read switch status.
  digitalWrite(2, LOW);    			// Pullup for switch 3 off.
  
  delay(3);

  mySerial.print(val);		// Switch state sent back to main controller. Bit 0 = switch 1, bit 1 = switch 2 etc... any combination can be determined.

}
