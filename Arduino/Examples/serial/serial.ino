void setup()
{
    Serial.begin(9600); // Inicia e configura o 'terminal' com velocidade de 9600 bits por segundo
}

void loop()
{
    Serial.println("Hello World!"); // Escreve na tela 'Hello World!'
    delay(1000);                    // Dá um delay de 1 segundo /na tela
}
