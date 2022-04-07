% Uma loja vende bicicletas com um acréscimo de 50% sobre o preço de
% custo. Ela paga a cada vendedor 2 salários mínimos mensais, mais uma
% comissão de 15% sobre o preço de custo de cada bicicleta vendida,
% dividida igualmente entre eles. Escreva um algoritmo que leia o número de
% empregados da loja, o valor do salário mínimo, o preço de custo de cada
% bicicleta, o número de bicicletas vendidas, calcule e escreva: o salário total
% de cada empregado e o lucro líquido da loja.

numero_de_vendedores = input('Digite o número de empregados da loja: ');
salario_minimo = input('Digite o valor do salário mínimo: ');
preco_de_custo = input('Digite o preço de custo de cada bicicleta: ');
bicicletas_vendidas = input('Digite o número de bicicletas vendidas: ')

salario_vendedor = (2 * salario_minimo) + ((15/100) * preco_de_custo * bicicletas_vendidas) / numero_de_vendedores;
lucro_da_loja = ((50/100) * preco_de_custo * bicicletas_vendidas) - (salario_vendedor * numero_de_vendedores);

sprintf('O salário de cada vendedor é de %.2f e o lucro da loja é de %.2f', salario_vendedor, lucro_da_loja)
