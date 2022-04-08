% Altere o algoritmo da questão anterior (i.e., questão 8) para que você
% forneça o limite inferior e superior de X.

x = input('Digite o limite inferior: ');
max = input('Digite o limite superior: ');
delta = input('Digite o espaçamento entre os números: ');

while (x <= max)

  sprintf('y(%f) = %f', x, 4 * x + 3)
  x = x + delta;

end
