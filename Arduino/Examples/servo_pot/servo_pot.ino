#include <Servo.h> // Inclui no programa o módulo do servo motor, já instalado no arduino.

Servo servo; // Inicia um servo motor com o nome "servo"
int PINO_POT = A0; // Pino do potenciômetro
int angulo0_1024, angulo0_180; // inicia as variaveis para guardar o ângulo do potenciômetro.

void setup()
{
    servo.attach(A5); // attach(associa) a porta A5(analógica) ao servo motor
}

void loop()
{
    // No arduino, ao utilizar as portas analógicas(e PWM) recebemos valores de no máximo 1024 e mínimo de 0.
    
    angulo0_1024 = analogRead(PINO_POT); // lê o valor no potenciômetro e guarda na variável angulo0_1024
    angulo0_180 = map(angulo0_1024, 0, 1024, 0, 180); // transforma o angulo para o intervalo 1 - 180 graus
    servo.write(angulo0_180); // faz o servo motor escrever o valor dado no potenciômetro
    delayMicroseconds(15); // para maior estabilidade do programa adicionamos um pequeno delay
}
