% Ler um vetor de 10 números e depois exibir os números localizados nas
% posições impares deste mesmo vetor.

vector = [];

for i = 1:10
  sprintf('Digite o %i° valor do vetor: ', i)
  vector(end + 1) = input(': ');

end

disp(vector(1:2:10));
