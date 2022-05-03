% Crie um FUNÇÃO que receba as três arestas de um triângulo e retorne:
% a) Se formam um triângulo;
% b) Se formam um triângulo é formado (isósceles, escaleno ou equilátero).
% Obs: a criaçõa da função é OBRIGATÓRIA, um programa para chama-la é opcional.

a = input('Digite o valor do primeiro lado: ');
b = input('Digite o valor do segundo lado: ');
c = input('Digite o valor do terceiro lado: ');

disp(triangle(a, b, c));

function output = triangle(a, b, c)
  is_triangle = ((abs(b - c) < a) && (a < b + c) && (abs(a - c) < b) && (b < a + c) && (abs(a - b) < c) && (c < a + b));

  if (is_triangle)
    conditions = [a == b, a == c, b == c];

    if (conditions(1) && conditions(3))
      output = 'O triângulo é Equilátero';
    elseif (conditions(1) || conditions(2) || conditions(3))
      output = 'O triângulo é Isóceles';
    else
      output = 'O triângulo é Escaleno';
    end

  else
    output = 'Os lados não formam um triângulo.';

  end

end
