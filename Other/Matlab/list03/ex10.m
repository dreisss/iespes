% Desenvolva um algoritmo que leia um conjunto de números inteiros
% positivos (você deve validar esta entrada) finalizado pela digitação do
% número zero. Assim que o número zero for digitado o algoritmo deve
% fornecer:
% I. A quantidade de números digitados (excluído o zero);
% II. A média dos valores digitados;
% III. O maior número digitado;
% IV. O menor número digitado.

numeros = [];
entrada = input('Digite um número inteiro positivo (0 p/ acabar): ');

while (entrada ~= 0)

  while (isinteger(entrada) == false && entrada < 0)

    entrada = input('Digite um número inteiro válido: ');

  end

  numeros(end + 1) = entrada;
  entrada = input('Digite um número inteiro positivo (0 p/ acabar): ');

end

sprintf('A quantidade de números colocados foi de %i', length(numeros))
sprintf('A média de números colocados foi de %f', mean(numeros))
sprintf('O maior número colocado foi %i', max(numeros))
sprintf('O menor número colocado foi %i', min(numeros))
