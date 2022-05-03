% Ler 10 valores reais e armazenar em um vetor. Modifique o vetor de modo
% que os valores das posições impares sejam aumentados em 5%, e os das
% posições pares sejam aumentados em 2%. Imprima depois o vetor
% resultante.

vector = [];

for i = 1:10
  sprintf('Digite o %i° valor do vetor: ', i)
  vector(end + 1) = input(': ');

end

for i = 1:10

  if (rem(i, 2) == 0)
    vector(i) = vector(i) + vector(i) * (5/100);

  else
    vector(i) = vector(i) + vector(i) * (2/100);

  end

end

disp(vector);
