#include <LiquidCrystal.h>

// configura o lcd nos pinos dados
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  // inicia o lcd com as seguintes colunas e linhas
  lcd.begin(16, 2);
  // escreve a mensagem no lcd
  lcd.print("hello, world!");
}

void loop() {
  // define o cursor na coluna 0 e linha 1
  lcd.setCursor(0, 1);
  // escreve o tempo rodado onde o cursor está
  lcd.print(millis() / 1000);
}