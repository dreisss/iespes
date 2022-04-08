% Desenvolva um algoritmo que apresente o valor de Y na seguinte função:
% Y = 4 X + 3 para X variando de -5 até 5.

delta = input('Digite o espaçamento entre os números: ');
x = -5;

while (x <= 5)

  sprintf('y(%f) = %f', x, 4 * x + 3)
  x = x + delta;

end
