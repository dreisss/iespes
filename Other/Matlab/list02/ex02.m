% [Use Função] Faça um algoritmo que receba o ano de nascimento de uma
% pessoa e o ano atual, calcule e mostre:
% a) a idade desta pessoa.
% b) quantos anos ela terá em 2035

ano_de_nascimento = input('Digite o seu ano de nascimento: ');
ano_atual = input('Digite o ano atual: ');

sprintf('Você tem %i anos de idade e terá %i em 2035.', idades(ano_de_nascimento, ano_atual))

function [output1, output2] = idades(ano_de_nascimento, ano_atual)
  output1 = (ano_atual - ano_de_nascimento);
  output2 = (2035 - ano_de_nascimento);
end
