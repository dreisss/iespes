% Faça um algoritmo que leia 2 valores numéricos e um símbolo. Caso o
% símbolo seja um dos relacionados abaixo efetue a operação
% correspondente com os valores. Atenção para a divisão por 0!
% • “+” operação de soma
% • “-” operação de subtração
% • “*” operação de multiplicação
% • “/” operação de divisão

numero1 = input('Digite o primeiro número: ');
numero2 = input('Digite o segundo número: ');
operacao = input('Digite a operação(+,-,*,/): ', 's');

resultado = eval(sprintf('%f %s %f', numero1, operacao, numero2));

sprintf('O resultado é de %f', resultado)
