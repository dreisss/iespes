% Escrever um algoritmo para ler cinco valores inteiros, calcular a sua média,
% e escrever na tela os que são superiores à média.

numeros = [
        input('Digite o primeiro número: '),
        input('Digite o segundo número: '),
        input('Digite o terceiro número: '),
        input('Digite o quarto número: '),
        input('Digite o quinto número: ')
        ];

media = (numeros(1) + numeros(2) + numeros(3) + numeros(4) + numeros(5)) / 5;

sprintf('A média dos números é %f', media)

for i = 1:5

  if (numeros(i) > media)
    sprintf('O número %f é maior q a média.', numeros(i))
  end

end
