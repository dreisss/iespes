data = [];

while (true)
  action = input('Adicionar aluno, mostrar notas ou sair? (a/m/s)', 's');

  if (action == 'a')
    student = [];
    student(end + 1) = input('Nome do aluno(número): ');
    student(end + 1) = input('Nota 1: ');
    student(end + 1) = input('Nota 2: ');
    student(end + 1) = input('Nota 3: ');
    student(end + 1) = input('Nota 4: ');
    student(end + 1) = (student(2) + student(3) + student(4) + student(5)) / 4;
    data = [data; student];

  elseif (action == 'm')
    disp(data);

  elseif (action == 's')
    break

  else
    action = input('Valor inválido. Digite novamente (a/m/s): ');

  end

end
