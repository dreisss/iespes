#include <Servo.h>

Servo servo;
int PINO_POT = A0;
int angulo0_1024, angulo0_180;

void setup()
{
    servo.attach(A5);
}

void loop()
{
    angulo0_1024 = analogRead(PINO_POT);
    angulo0_180 = map(angulo0_1024, 0, 1024, 0, 180);
    servo.write(angulo0_180);
    delayMicroseconds(15);
}
