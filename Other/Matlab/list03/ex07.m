% Desenvolva um algoritmo que sorteie um número menor que 100 e maior
% que 0. Posteriormente o algoritmo deve listar todos os números pares
% maiores que o número sorteado e menores que 100.

numero = ceil(rand * 100);

for i = numero:100

  if (rem(i, 2) == 0)

    disp(i);

  end

end
