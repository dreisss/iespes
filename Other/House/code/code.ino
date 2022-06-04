#include <Servo.h>

#define PIN_BT_LEDS 2
#define PIN_BT_GATE 3
#define PIN_LEDS 4
#define PIN_SERVO A0

bool gateState = 0, ledsState = 0;
Servo servo;

void setup()
{
  Serial.begin(5600);

  pinMode(PIN_BT_GATE, INPUT_PULLUP);
  pinMode(PIN_BT_LEDS, INPUT_PULLUP);
  pinMode(PIN_LEDS, OUTPUT);
  servo.attach(PIN_SERVO);
}

void loop()
{
  if (digitalRead(PIN_BT_LEDS) == LOW)
  {
    ledsState = (ledsState == 0) ? 1 : 0;
    digitalWrite(PIN_LEDS, ledsState);
  }

  if (digitalRead(PIN_BT_GATE) == LOW)
  {
    gateState = (gateState == 0) ? 1 : 0;
    servo.write(110 * gateState);
  }

  delay(100);
}
