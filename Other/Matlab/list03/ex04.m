% Supondo que a população de um pais A seja de 9.000 habitantes com uma
% taxa de crescimento de 3% ao ano. Já o pais B tem 20.000 habitantes e
% uma taxa de crescimento de apenas 1,5%. Desenvolva um algoritmo que
% apresente o número de anos necessários para que o pais A ultrapasse a
% população do pais B.

populacaoA = 9000;
populacaoB = 20000;
anos_necessarios = 0;

while (populacaoA < populacaoB)

  populacaoA = populacaoA + (3/100) * populacaoA;
  populacaoB = populacaoB + (1.5/100) * populacaoB;

  anos_necessarios = anos_necessarios + 1;

end

sprintf('A quantidade de anos necessários é de %i anos', anos_necessarios)
