% Modifique o algoritmo da média do aluno para informar:
% APROVADO ............. caso a nota final esteja no intervalo [10, 7]
% RECUPERAÇÃO...... caso a nota final esteja no intervalo [ 5, 7]
% REPROVADO .......... caso a nota final esteja no intervalo [ 0, 5]

nome_do_aluno = input('Digite o nome do aluno: ', 's');
nota1 = input('Digite a primeira nota: ');
nota2 = input('Digite a segunda nota: ');
nota3 = input('Digite a terceira nota: ');
media = (2 * nota1 + 3 * nota2 + 5 * nota3) / 10;

sprintf('A Média Final do %s foi de %.2f.', nome_do_aluno, media)

if (media >= 7 && media <= 10)
  disp('APROVADO');
elseif (media >= 5 && media < 7)
  disp('RECUPERAÇÃO');
elseif (media >= 0 && media < 5)
  disp('REPROVADO');
end
