% Faça um algoritmo que calcule a média ponderada de um aluno, a partir de
% suas 3 notas obtidas no curso, sabendo-se que a primeira avaliação tem
% peso 2, a segunda tem peso 3 e a terceira tem peso 5. Mostre, ao final, a
% mensagem : “A Média Final do NOME_ALUNO foi de 99.99.” . Informar
% também se o aluno foi aprovado, mostrando a mensagem “APROVADO”
% caso a nota final seja igual ou superior a 6,0.

nome_do_aluno = input('Digite o nome do aluno: ', 's');
nota1 = input('Digite a primeira nota: ');
nota2 = input('Digite a segunda nota: ');
nota3 = input('Digite a terceira nota: ');
media = (2 * nota1 + 3 * nota2 + 5 * nota3) / 10;

sprintf('A Média Final do %s foi de %.2f.', nome_do_aluno, media)

if (media >= 6)
  disp('APROVADO');
end
