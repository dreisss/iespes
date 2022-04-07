% Faça um programa que solicite ao usuário o valor do litro de gasolina e o valor
% que o usuário deseja abastecer. Calcule e apresente ao usuário a quantidade de
% litros de gasolina que ele consegue obter com o valor informado.

preco_da_gasolina = input('Digite o valor do litro da gasolina: ');
valor_a_abastecer = input('Digite o valor que deseja abastecer: ');
litros_obtidos = valor_a_abastecer / preco_da_gasolina;

sprintf('A quantidade obtida com esse valor será de %.2f', litros_obtidos)
