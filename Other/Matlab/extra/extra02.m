% Leia 2 vetores (A e B) de mesma dimensão, no entanto, o usuário pode definir o
% tamanho limitando a 3 posições. Em ambos vetores devem armazenados nomes de
% pessoas, posterior a entrada de dados o algoritmmo deve unir ambos e armazenar
% em um terceiro vetor (C). Posteriormente você deve apresentar os vetores A, B e C
% ordenados em ordem ALFABETICA. Também deve ser disponibilizado um mecanismo de
% busca que solicita o nome a ser pesquisado informando se o mesmo não existe ou,
% caso exista, exibir sua posição no vetor C (já ordenado). A pesquisa deve ser
% encerrada quando for digitado o nome NADA. Lembre - se que neste caso a entrada
% NADA não pode ser uma entrada válida nos vetores A e B.

% Recebe o tamanho do vetor, somente de 1 até 3.
dim = input('Digite o tamanho dos vetores(1 até 3): ');

while (dim > 3 || dim < 1)
  dim = input('Valor inválido! Digite novamente: ');
end

% Recebe e preenche os vetores A e B.
A = strings(1, dim);

for i = 1:dim
  sprintf('Digite o nome na posição %i do vetor A: ', i)
  A(i) = input(': ', 's');

end

B = strings(1, dim);

for i = 1:dim
  sprintf('Digite o nome na posição %i do vetor B: ', i)
  B(i) = input(': ', 's');

end

% Ordena o vetor C = [A, B]
C = sort([A; B]);

while (true)
  search = input('Digite o nome para ser procurado (NADA p/ sair): ', 's');

  if (length(search) == 4)

    if (search == 'NADA')
      break;

    end

  end

  index = find(search == C);

  if (index)
    sprintf('A posição de "%s" no vetor é %i.', search, index)

  else
    disp('Esse nome não está no vetor.')

  end

end
