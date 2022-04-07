% Escrever um algoritmo para ler as dimensões de uma cozinha
% (comprimento, largura e altura), calcular e escrever a quantidade de caixas
% de azulejos necessárias para cobrir todas as paredes (considere que não
% será descontada a área ocupada por portas e janelas). Cada caixa de
% azulejos possui 1,5 metros quadrados de azulejos.

comprimento = input('Digite o comprimento da cozinha(m): ');
largura = input('Digite a largura da cozinha(m): ');
altura = input('Digite a altura da cozinha(m): ');

area_da_cozinha = 2 * (comprimento * largura) + 2 * (comprimento * altura) + 2 * (largura * altura);
caixas_de_azulejos = area_da_cozinha / 1.5;

sprintf('A quantidade de caixas nescessárias é de %i', ceil(caixas_de_azulejos))
