% Elaborar um programa que crie um vetor de tamanho definido pelo usuário que
% atenda as seguintes regras de formatação
%   A) Não pode ter tamanho MENOR que 3 elementos;
%   B) Não pode ter tamanho MAIOR que 8 elementos;
%   C) Não pode conter números NEGATIVOS;
%   D) Somente pode conter números PRIMOS.

dim = input('Digite o tamanho do vetor(3-8): ');

while (dim < 3 || dim > 8)
  dim = input('Valor inválido! Digite novamente: ');
end

vector = zeros(1, dim);

for i = 1:dim
  sprintf('Digite o %i° valor do vetor: ', i)
  vector(i) = input(': ');

  while (vector(i) < 0 || ~(isprime(vector(i))))
    vector(i) = input('Valor inválido! Digite novamente: ');
  end

end

disp(vector)
