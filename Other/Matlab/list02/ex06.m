% Escrever um algoritmo para ler o número de eleitores de um município, o
% número de votos brancos, nulos e válidos. Calcular e escrever o percentual
% que cada um representa em relação ao total de eleitores.

numero_de_eleitores = input('Digite o número de eleitores do município: ');
votos_em_branco = input('Digite o numero de votos em branco: ');
votos_nulos = input('Digite o numero de votos nulos: ');
votos_validos = input('Digite o numero de votos válidos: ');

percentual_em_branco = votos_em_branco / numero_de_eleitores;
percentual_em_nulo = votos_nulos / numero_de_eleitores;
percentual_valido = votos_validos / numero_de_eleitores;

sprintf('Percentual de votos brancos: %.2f', percentual_em_branco * 100)
sprintf('Percentual de votos nulos: %.2f', percentual_em_nulo * 100)
sprintf('Percentual de votos válidos: %.2f', percentual_valido * 100)
