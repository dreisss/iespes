int PINO_TRIGGER = 10;
int PINO_ECHO = 9;
float VEL_SOM = 0.034029;
float distancia, tempo;

void setup()
{
    Serial.begin(9600);

    pinMode(PINO_TRIGGER, OUTPUT);
    pinMode(PINO_ECHO, INPUT);
}

void loop()
{
    digitalWrite(PINO_TRIGGER, LOW);
    delayMicroseconds(5);

    digitalWrite(PINO_TRIGGER, HIGH);
    delayMicroseconds(10);
    digitalWrite(PINO_TRIGGER, LOW);

    tempo = pulseIn(PINO_ECHO, HIGH);
    distancia = (VEL_SOM * tempo) / 2;

    Serial.println(distancia);
}
