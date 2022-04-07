% Faça um programa que calcule o tempo, em anos, que uma pessoa irá demorar
% para economizar R$ 1.000.000,00 (Um milhão de reais). Como entrada do
% programa o usuário deve fornecer o seu salário mensal e o total de despesas no
% mês.

salario_mensal = input('Digite seu salário mensal: ');
despesa_mensal = input('Digite sua despesa mensal: ');
tempo_em_anos = 1000000 / (12 * (salario_mensal - despesa_mensal));

sprintf('Você irá demorar %.1f anos para economizar R$ 1.000.00,00.', tempo_em_anos)
