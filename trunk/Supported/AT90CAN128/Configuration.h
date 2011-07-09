/* Configuration file for application specific options */
#define LOW_SIDE_DRIVER_CH1 38

// OUTPUT CONFIGURATION, TURN ON OR OFF HARDWARE OUTPUTS

//Can possibly set this to somthing outside of correct range to "Turn Off" Horn. 
//Then Re-allocate LOW_SIDE_DRIVER_CH1 to another function, eg BUZZER_OUTPUT_PIN.
#define HORN_OUTPUT_PIN LOW_SIDE_DRIVER_CH1

//To do, add buzzer.


//To do, add LED outputs.



// FUNCTION CONFIGUARATION, TURN ON OR OFF SOFTWARE FEATURES
//1 = One wire switch interface present, 0 not present.
#define USE_ONE_WIRE_SWITCHES 1 

