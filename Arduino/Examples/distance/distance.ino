// Iniciando variaveis úteis pro programa.
int PINO_TRIGGER = 10;
int PINO_ECHO = 9;
float VEL_SOM = 0.034029;
float distancia, tempo;

void setup()
{
    Serial.begin(9600); // Inicia e configura o terminal com comunicação de 9600 bits por segundo.

    pinMode(PINO_TRIGGER, OUTPUT); // Configura a porta PINO_TRIGGER como saída de energia (escrita)
    pinMode(PINO_ECHO, INPUT);     // Configura a porta PINO_ECHO como entrada (leitura)
}

void loop()
{
    digitalWrite(PINO_TRIGGER, LOW); // desliga a energia no PINO_TRIGGER
    delayMicroseconds(5);            // delay de 5 microsegundos
    
    // Essa sequancia de comando manda um sinal para o sensor de distância.
    digitalWrite(PINO_TRIGGER, HIGH); // Liga a energia no PINO_TRIGGER
    delayMicroseconds(10);            // Delay de 10 microsegundos
    digitalWrite(PINO_TRIGGER, LOW);  // Desliga a energia no PINO_TRIGGER

    tempo = pulseIn(PINO_ECHO, HIGH);  // Guarda o tempo de ida e volta
    distancia = (VEL_SOM * tempo) / 2; // Calcula a distância a partir do tempo

    Serial.println(distancia); // Escreve a distância na tela do terminal.
}
