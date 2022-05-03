% Crie um programa que solicite ao usuário a digitação de dois vetores de cinco
% elementos númericos POSITIVOS cada. Por exemplo, vetor A e vetor B cada um com
% cinco números digitados pelo usuário. Logo em seguida o programa deve criar um
% terceiro vetor denominado vetor C, formado pelos elementos de A e B inseridos
% de forma alternada. Ou seja, dado a entrada exemplo, a seguir, de A e o programa
% deve criar o vetor C com a seguine ordem: < exemplo >

vectorA = zeros(1, 5);

for i = 1:5
  sprintf('Digite o %i° valor do velor A: ', i)
  vectorA(i) = input(': ');

  while (vectorA(i) < 0)
    vectorA(i) = input('Valor Inválido! Digite novamente: ')
  end

end

vectorB = zeros(1, 5);

for i = 1:5
  sprintf('Digite o %i° valor do velor B: ', i)
  vectorB(i) = input(': ');

  while (vectorB(i) < 0)
    vectorB(i) = input('Valor Inválido! Digite novamente: ')
  end

end

vectorC = [];

for i = 1:5;
  vectorC(end + 1) = vectorA(i);
  vectorC(end + 1) = vectorB(i);

end

disp(vectorC);
