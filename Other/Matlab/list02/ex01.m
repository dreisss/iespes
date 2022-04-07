% Faça um algoritmo que receba o salário-base de um funcionário, calcule e
% mostre o salário a receber, sabendo que este funcionário tem gratificação
% de 5% sobre o salário-base e paga imposto de 7% sobre o salário-base, se
% o salário-base do empregado for superior a R$ 1.900,00. Mostrar no final o
% valor do salário-base, valor da gratificação, o valor debito relativo aos
% impostos e o salário final do empregado.

salario_base = input('Digite o salário base do funcionário: ');
gratificacao = salario_base * (5/100);

if (salario_base > 1900)
  impostos = salario_base * (7/100);
else
  impostos = 0;
end

salario_final = salario_base + gratificacao - impostos;

sprintf('Salário base: %.2f', salario_base)
sprintf('Gratificação: %.2f', gratificacao)
sprintf('Impostos: %.2f', impostos)
sprintf('Salário final: %.2f', salario_final)
