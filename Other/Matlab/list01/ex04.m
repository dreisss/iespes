% Desenvolva um programa que calcule a média ponderada (ver formula a seguir)
% a partir das três notas de um aluno.
%       MP = ((2 * nota1) + (3 * nota2) + ( 5 * nota3)) / 10
% * Posteriormente, altere o programa para que o peso da média ponderada
% possa ser fornecido pelo usuário.

nota1 = input('Digite a primeira nota do aluno: ');
nota2 = input('Digite a segunda nota do aluno: ');
nota3 = input('Digite a terceira nota do aluno: ');
MP = ((2 * nota1) + (3 * nota2) + (5 * nota3)) / 10;

sprintf('A média ponderada do aluno é %.2f ', MP)
