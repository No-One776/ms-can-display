#define SWITCH_UP 6
#define SWITCH_DOWN  3
#define SWITCH_HORN 5
#define ALL_SWITCH_PRESSED 0

#define DISPLAY_RESET_PIN 39

char oldSwitchState;
char newSwitchState;

void InitialiseOneWireSwitches();
void readSwitches();

