% Um motorista de táxi deseja calcular o rendimento de seu carro na praça.
% Sabendo - se que o preço do combustível é de R$2,99, escreva um
% algoritmo para ler a marcação do hodômetro no início do dia, a marcação
% no final do dia, o número de litros de combustível gastos e o valor total
% (R$) recebido dos passageiros. Calcular e escrever a média do consumo
% em Km / l e o lucro líquido do dia.

marcacao_inicial = input('Digite a marcação do hodômetro inicial: ');
marcacao_final = input('Digite a marcação do hodômetro final: ');
combustivel_gasto = input('Digite a quantidade de combustivel gasto(l): ');
valor_recebido = input('Digite o valor total recebido dos pasageiros: ');

consumo_medio = (marcacao_final - marcacao_inicial) / combustivel_gasto;
lucro_do_dia = (valor_recebido) - (combustivel_gasto * 2.99);

sprintf('O consumo médio foi de %.2fkm/l e o lucro do dia foi de R$%.2f', consumo_medio, lucro_do_dia)
