% Altere o algoritmo da questão anterior (i.e., questão 4) para que a
% população e a taxa de crescimento de ambos países seja fornecido pelo
% usuário. O algoritmo deve calcular o número de anos que o pais A levará
% para ultrapassar a população do pais B. Veja que você deve cuidar para
% que a população inicial do pais A nunca seja superior ao pais B na entrada
% dos dados, assim como a taxa de crescimento do pais A nunca seja inferior
% ao do pais B.

populacaoA = input('População do país A: ');
populacaoB = input('População do país B: ');

while (populacaoA > populacaoB)

  populacaoB = input('A população do país B deve ser maior que do país A. Tente novamente: ');

end

crescimentoA = input('Crescimento da população A (porcentagem): ');
crescimentoB = input('Crescimento da população B (porcentagem): ');

while (crescimentoA < crescimentoB)

  populacaoB = input('O crescimento da população B deve ser maior que da população A. Tente novamente: ');

end

anos_necessarios = 0;

while (populacaoA < populacaoB)

  populacaoA = populacaoA + (3/100) * populacaoA;
  populacaoB = populacaoB + (1.5/100) * populacaoB;

  anos_necessarios = anos_necessarios + 1;

end

sprintf('A quantidade de anos necessários é de %i anos', anos_necessarios)
