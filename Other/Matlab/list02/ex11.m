% Elabore um programa que a partir da entrada de um inteiro devolva se o
% mesmo é PAR ou ÍMPAR.

numero = input('Digite um número inteiro: ');

if (rem(numero, 2) == 0)
  disp('O número é Par.');
else
  disp('O número é Impar.');
end
