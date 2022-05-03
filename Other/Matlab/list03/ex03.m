% Calcule e imprima a soma dos 10 primeiros números primos.

soma = 0;
contador = 0;

numero = 2;

while (contador < 10)
  e_primo = true;

  for i = 2:sqrt(numero)

    if (rem(numero, i) == 0)
      e_primo = false;
      break;
    end

  end

  if (e_primo)
    disp(numero);
    soma = soma + numero;
    contador = contador + 1;
  end

  numero = numero + 1;

end

sprintf('A soma dos 10 primeiros primos é %i', soma)
