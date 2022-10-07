// Configurando as variáveis úteis
int PINO_LED = 9;
int BRILHO = 0;
int VELOCIDADE_FADE = 5;

void setup()
{
    pinMode(PINO_LED, OUTPUT); // Configura o pino do led como output
}

void loop()
{
    analogWrite(PINO_LED, BRILHO);     // Coloca o valor do Brilho no pino da led.
    BRILHO = BRILHO + VELOCIDADE_FADE; // A cada ciclo o brilho aumenta

    if (BRILHO <= 0 || BRILHO >= 255) // Se o brilho chegar em um dos limites ele inverte o sinal da velocidade
    {
        VELOCIDADE_FADE = -VELOCIDADE_FADE;
    }

    delay(30); // Pro código rodar melhor é comum colocar um deley curto
}
