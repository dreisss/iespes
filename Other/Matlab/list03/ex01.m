% Desenvolva um algoritmo que apresente os 100 primeiros números
% impares.

for i = 1:100

  if (rem(i, 2) ~= 0)
    disp(i);
  end

end
