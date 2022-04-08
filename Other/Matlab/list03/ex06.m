% Uma rainha requisitou os serviços de um monge e disse-lhe que pagaria
% qualquer valor pelo serviço. O monge, necessitando de alimentos, indagou
% a rainha sobre o pagamento, se poderia ser realizado com grãos de trigo
% dispostos em um tabuleiro de xadrez(que possuí 64 casas), de tal forma
% que o primeiro quadro deveria conter um grão e os quadros subsequentes,
% o dobro do quadro anterior. Desenvolva um algoritmo que calcule o número
% de grãos que o monge esperava receber.

soma = 0;

for i = 0:63

  soma = soma + pow2(i);

end

sprintf('O valor esperado era de %i grãos', soma)
