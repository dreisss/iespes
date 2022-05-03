% Crie um algoritmo que simule o jogo da MegaSena. O algoritmo deve sortear
% seis números de forma aleatória e ainda solicitar ao jogador sua aposta, que
% consiste em 6 números a serem digitados e armazenados em um vetor. Ao
% final da execução o algoritmo deve informar se o apostador é o novo
% milionário (seis acertos) ou o número de acertos (que pode variar de 0 a 5).
% Dica deve ser usado a função randi.

vector = [];

for i = 1:6
  sprintf('Digite o %i° valor para o sorteio(de 1 até 60): ', i)
  vector(end + 1) = input(': ');

end

randVector = randi(60, 1, 6);
equals = 0;

for i = 1:6

  for j = i:6

    if (vector(i) == randVector(j))
      equals = equals + 1;
    end

  end

end

if (equals == 6)
  disp('Você acertou 6 e é o ganhador!!');

else
  sprintf('Você acertou %i números dessa vez.', equals)

end
