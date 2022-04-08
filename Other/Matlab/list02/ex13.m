% Escrever um algoritmo para ler cinco valores inteiros e escrever na tela o
% maior e o menor deles.

numeros = [
        input('Digite o primeiro número: '),
        input('Digite o segundo número: '),
        input('Digite o terceiro número: '),
        input('Digite o quarto número: '),
        input('Digite o quinto número: ')
        ];

maior_numero = numeros(1);
menor_numero = numeros(1);

for i = 1:5

  if (numeros(i) > maior_numero)
    maior_numero = numeros(i);
  elseif (numeros(i) < menor_numero)
    menor_numero = numeros(i);
  end

end

sprintf('O maior número é o %f e o menor é o %f', maior_numero, menor_numero)
