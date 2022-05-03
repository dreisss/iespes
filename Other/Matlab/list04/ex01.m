% Faça um algoritmo para gerar um vetor de 30 posições, onde cada elemento
% corresponde ao quadrado de sua posição. Imprima depois o vetor resultante.

vector = [];

for i = 1:30
  vector(end + 1) = i.^2;

end

disp(vector);
