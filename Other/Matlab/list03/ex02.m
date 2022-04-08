% Calcule e imprima na tela a soma dos N primeiros números pares onde N é
% um número inteiro que deve ser lido a partir do teclado.

N = input('Digite um número inteiro: ');

soma = 0;

for i = 1:N

  if (rem(i, 2) == 0)
    soma = soma + i;
  end

end

sprintf('A soma dos numeros pares até %i é %i', N, soma)
