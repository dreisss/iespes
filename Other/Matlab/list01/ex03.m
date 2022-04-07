% Desenvolva um programa que solicite ao usuário um número inteiro. Em seguida
% apresente na tela os dois números que antecedem o número fornecido, o
% próprio número fornecido e os dois números seguintes.

numero = input('Digite um número inteiro: ');

sprintf('%i, %i, %i, %i, %i', numero - 2, numero - 1, numero, numero + 1, numero + 2)
