% Faça um algoritmo para criar um vetor real de 20 posições: as 10 primeiras
% são informados pelo usuário, e as 10 seguintes são os mesmos números em
% ordem inversa.

vector = zeros(1, 20);

for i = 1:10
  sprintf('Digite o %i° valor do vetor: ', i)
  vector(i) = input(': ');
  vector(21 - i) = vector(i);

end

disp(vector);
