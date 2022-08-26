// No código do arduino existe por padrão a variável LED_BUILTIN como 13
// ela é geralmente usada pra testes simples

void setup()
{
    pinMode(LED_BUILTIN, OUTPUT); // Configura a porta 13(LED_BUILTIN) como saída(OUTPUT)
}

void loop()
{
    digitalWrite(LED_BUILTIN, HIGH); // Liga a energia na porta 13
    delay(1000);                     // Dá um segundo de delay
    digitalWrite(LED_BUILTIN, LOW);  // Desliga a energia na porta 13
    delay(1000);                     // Dá um segundo de delay
}
