% Ler um vetor de 10 números inteiros e depois imprimi-los em ordem inversa.

vector = zeros(1, 10);

for i = 1:10
  sprintf('Digite o %i° valor do vetor: ', i)
  vector(11 - i) = input(': ');

end

disp(vector);
