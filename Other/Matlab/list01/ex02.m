% Faça um programa que calcule a média de consumo de combustível de um carro.
% Para tanto, o usuário deve fornecer a quilometragem inicial e final do veiculo,
% assim como o consumo, em litros, de combustível. No final da execução o
% programa deve informar qual foi a média de consumo (km/l).

km_inicial = input('Digite o valor da quilometragem inicial: ');
km_final = input('Digite o valor da quilometragem final: ');
consumo = input('Digite o valor consumido de gasolina: ');
media = (km_final - km_inicial) / consumo;

sprintf('A média de consuno é de %.2f km/l', media)
