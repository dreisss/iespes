% Escrever um algoritmo para ler o salário mensal e o percentual de reajuste.
% Calcular e escrever o valor do novo salário.

salario_mensal = input('Digite o salário mensal: ');
reajuste = input('Digite o percentual de reajuste: ');
novo_salario = salario_mensal + salario_mensal * (reajuste / 100);

sprintf('O novo salário é de %.2f', novo_salario)
