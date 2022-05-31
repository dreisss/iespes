// Including Servo library
#include <Servo.h>

// Defining components PINs and gate states
#define PIN_BT 12
#define PIN_SERVO A0
#define OPEN 1
#define CLOSED 0

// State variable and servo object
bool gateState = CLOSED;
Servo servo;

void setup()
{
  pinMode(PIN_BT, INPUT_PULLUP);
  servo.attach(PIN_SERVO);
}

void loop()
{
  if (digitalRead(PIN_BT) == LOW)
  {
    gateState = (gateState == OPEN) ? CLOSED : OPEN;
  }

  servo.write(110 * gateState);
  delay(100);
}
