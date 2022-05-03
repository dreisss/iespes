% Escrever um algoritmo para ler uma temperatura em graus Celsius ou
% Fahrenheit (a entrada dos dados deve definir qual o formato).
% Posteriormente calcule a conversão de Celsius/Fahrenheit ou vice-versa.

temperatura = input('Digite a temperatura: ');
tipo_temperatura = input('Digite o tipo de medida (F, C): ', 's');

if tipo_temperatura == 'F'
  sprintf('A temperatura em °C é %.4f', (temperatura - 32) * 5/9)
elseif tipo_temperatura == 'C'
  sprintf('A temperatura em °F é %.4f', (temperatura * 9/5) + 32)
else
  disp('Tipo de temperatura inválido!');
end
