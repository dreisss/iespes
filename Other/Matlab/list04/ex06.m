% Ler dois vetores de números inteiros, cada um com 10 posições. Crie um
% terceiro vetor onde cada valor é a soma dos valores contidos nas posições
% respectivas dos vetores originais. Imprima depois os três vetores.

vector1 = [];

for i = 1:10
  sprintf('Digite o %i° valor do vetor 1: ', i)
  vector1(end + 1) = input(': ');

end

vector2 = [];

for i = 1:10
  sprintf('Digite o %i° valor do vetor 2: ', i)
  vector2(end + 1) = input(': ');

end

disp(vector1);
disp(vector2);
disp(vector1 + vector2);
