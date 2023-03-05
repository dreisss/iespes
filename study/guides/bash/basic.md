# [**Bash basics**](#bash-basics)

Conceitos e comandos básicos para utilização de um terminal bash.

## [**Comandos de Navegação:**](#comandos-de-navegação)

- **_`cd`_**: '**c**hange **d**irectory' / Mudar diretório

  Usado para navegar entre as diferentes pastas e subpastas do sistema. Exemplos:

  - Navegar até a pasta raiz do usuário:

    ```sh
    cd ~ # o '~' é usado para indicar a raiz do usuário logado
    ```

    **Obs:** nesse caso podemos rodar somente o comando `cd`, ele redireciona para
    a pasta _root_ do usuário, por padrão.

  - Entrar e voltar de uma pasta chamada 'pasta':

    ```sh
    cd pasta # entra na pasta indicada
    cd .. # volta para a pasta anterior
    ```

    **Obs:** Em um terminal _bashLike_ existem duas pastas por padrão em cada diretório.
    As pastas '.' e '..', as quais indicam, respectivamente, a pasta atual e a
    pasta anterior (pasta mãe/pai).

- **_`ls`_**: '**l**i**s**t directory' / Listar diretório

  Usado para listar os arquivos e pastas na pasta atual. Exemplos:

  - Listar os arquivos e diretórios da pasta atual:

    ```sh
    ls .
    ```

  - Listar os arquivos e diretórios ocultos da pasta atual:

    ```sh
    ls . -a # o '-a' é equivalente à '--all' (all = todos)
    ```

    **Obs:** Em um terminal _bashLike_ os arquivos/pastas ocultos(as) são indicadas
    com um ponto no início do nome. Exemplos: .git, .bashrc, .cache.

  - Listar os arquivos/diretórios da pasta atual com mais informações sobre eles:

    ```sh
    ls . -l # -l indica list/lista (nesse caso não existe o parâmetro '--list')
    ```

    **Obs1:** algumas informações úteis sobre os arquivos/diretórios mostradas
    nessa visualização: permissões, usuário criador, tamanho (em bytes) e ultima
    modificação do arquivo.

    **Obs2:** Em um terminal _bashLike_ você pode combinar parâmetros em um único
    comando, sendo possível rodar, por exemplo, `ls -la` para listar todos os
    arquivos com informações adicionais.

## [**Comandos para Arquivos e Diretórios:**](#comandos-para-arquivos-e-diretórios)

- **_`mkdir`_**: '**m**a**k**e **dir**ectory' / Criar diretório

  Cria um diretório na pasta atual. Exemplo:

  - Criar uma pasta chamada 'teste' na pasta atual:

    ```sh
    mkdir teste
    ```

- **_`touch`_**: Tocar, triscar

  Cria um arquivo com o nome e a extensão indicada. Exemplos:

  - Criar arquivo 'teste.txt' na pasta atual:

    ```sh
    touch teste.txt
    ```

  - Criar um arquivo oculto com nome 'oculto.txt' na pasta atual:

    ```sh
    touch .oculto.txt
    ```

- **_`rm`_**: '**r**e**m**ove' / Remover

  Remove os arquivos ou diretórios indicados. Exemplos:

  - Remover o arquivo 'exemplo.txt' do diretório atual.

    ```sh
    rm exemplo.txt
    ```

  - Remover o diretório 'exemplo' do diretório atual.

    ```sh
    rm -r exemplo
    ```

    **Obs1:** O '-r' vem de _recursively_ (recursivamente), ou seja, ele remove
    o diretórios e seus respectivos subdiretórios e arquivos, recursivamente.

    **Obs2:** Caso precise forçar a remoção do arquivo/diretório podemos usar o
    parâmetro '-f' (do inglês _force_). Podendo também combinar com o comando
    anterior, ficando: `rm -rf exemplo.txt`

- **_`mv`_**: '**m**o**v**e' / Mover

  Move/Renomeia o arquivo ou pasta indicado(a). Exemplos:

  - Renomear o arquivo 'exemplo1' para 'exemplo2'.

    ```sh
    mv exemplo1 exemplo2
    ```

  - Mover a pasta 'para_mover' para a pasta 'destino' no diretório atual.

    ```sh
    mv ./para_mover ./destino # './' representa o diretório atual
    ```

    **Obs:** Note que deve existir a pasta 'destino', caso contrário o comando
    apenas renomeará a pasta 'para_mover'.

- **_`cp`_**: '**c**o**p**y' / Copiar

  Copia o arquivo ou pasta indicado(a). Exemplos:

  - Copiar o arquivo 'exemplo.txt' para o diretório 'pasta'.

    ```sh
    cp exemplo.txt pasta
    ```

- **_`nano`_**, **_`vim`_**:

  Ambos são editores de arquivo e podem ser abertos utilizando o comando seguido
  do nome do arquivo.

- **_`cat`_**: '**cat**ch' / Capturar, Pegar

  Mostra o conteúdo do arquivo especificado. Exemplo:

  ```sh
  cat exemplo.txt
  ```

- **_`more`_**: Mais

  Mostra o conteúdo do arquivo especificado, porém de forma parcial. De acordo
  com o usuário o programa irá mostrar mais ou menos conteúdo do arquivo
  especificado. Exemplo:

  ```sh
  more exemplo.txt
  ```

- **_`less`_**: Menos

  Mostra o conteúdo do arquivo especificado, porém de forma parcial. De acordo
  com o usuário o programa irá mostrar mais ou menos conteúdo do arquivo
  especificado. (versão posterior ao _more_) Exemplo:

  ```sh
  less exemplo.txt
  ```
