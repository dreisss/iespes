% [Use Função] Existem números de 4 dígitos (entre 1000 e 9999) que
% obedecem à seguinte característica: se dividirmos o número em dois
% números de dois dígitos, um composto pela dezena e pela unidade, e outro
% pelo milhar e pela centena, somarmos estes dois novos números gerando
% um terceiro, o quadrado deste terceiro número é exatamente o número
% original de quatro dígitos. Por exemplo:
% 2025 -> dividindo: 20 e 25 -> somando temos 45 -> 45^2 = 2025
%
% Escreva um programa para ler um número e verificar se ele obedece a esta
% característica. Caso ele obedeça escreva a saída do programa conforme o
% exemplo acima.

numero = input('Digite um número de 4 dígitos: ');

sprintf('Esse número %s a regra', obedece(numero))

function output = obedece(numero)

  resultado = pow2(fix(numero / 100) + rem(numero, 100));

  if (resultado == numero)
    output = 'obedece';
  else
    output = 'não obedece';
  end

end
