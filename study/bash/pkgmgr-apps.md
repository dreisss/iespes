# Package Managers and Simple Applications

## Gerenciadores de Pacotes:

Todo sistema operacional de respeito deve ter um gerenciador de pacotes que
consegue se conectar a um servidor online, baixar e instalar os pacotes.
Pacotes podem ser aplicativos (edge, chrome, vscode, ...), comandos (fortune,
cowsay, git, ...) para o determinado sistema, entre outros softwares.

Alguns dos gerenciadores de pacotes mais conhecidos são:

- **Chocolatey:** ou _choco_, é o gerenciador de pacotes padrão utilizado no Windows

- **Pacman:** gerenciador padrão das distribuições Linux derivadas do _Arch Linux_

- **Aptitude:** ou _apt_, é o gerenciador padrão de distribuições Linux derivadas
  do _Debian Linux_ (Ubuntu, Kali, Tails, etc.)

- **Homebrew:** ou _brew_, é o gerenciador do sistema macOS

Além dos gerenciadores de pacote de cada sistema existem também os gerenciadores
específicos para cada linguagem de programação e _stack_ de programação (pesquise
o que é uma stack de programação), alguns deles são:

- **Node Package Manager:** ou _npm_, gerenciador das stacks que utilizam _Nodejs_

- **Yarn:** também gerenciador para stacks Nodejs, sendo concorrente direto no npm

- **Package Installer for Python:** ou _pip_, é gerenciador padrão do _Python_

- **Cargo:** gerenciador padrão da linguagem _Rust_

## Instalando Aplicativos / Softwares:

Uma das distribuições Linux mais utilizadas é o Ubuntu, cujo gerenciador de
pacotes é o **apt**, que segue as seguintes regras para a instalação de pacotes:

Caso o pacote seja comum (o comando _fortune_, por exemplo) basta rodar:

```sh
apt install fortune
```

Já em caso da necessidade de acesso à arquivos críticos para o sistema (o pacote
_build-essential_, por exemplo), é necessário a instalação como administrador:

```sh
sudo apt install build-essential # o comando sudo 'invoca' o administrador
```

Após isso digite a senha e a instalação será iniciada.

**Obs1:**

Um parâmetro que pode ser útil é o `-y`. Sempre que adicionamos esse parâmetro
em um comando ele automaticamente considera _Yes_ como a resposta para as perguntas
executadas pelo comando, nesse caso, pulando as etapas de instalação. Assim,
podemos rodar:

```sh
sudo apt install build-essential -y
```

**Obs2:** é importante verificar se dado gerenciador de pacotes possui o pacote
desejado (o pacote _asdf_, por exemplo) em seu servidor oficial. Nem todo pacote
está em um gerenciador, as vezes precisamos adicionar um servidor alternativo ao
servidor original do gerenciador.

## Rodando comandos / Entrada e saída padrão / Pipe:

Em um terminal tudo são comandos, tendo entradas e saídas (_input_ e _output_)
específicas. Quando 'chamamos' um comando ele pode tratar os dados de diferentes
maneiras:

- **não receber nenhum dado**

  Comandos como `ls`, `dir`, `fortune`, etc., não recebem dados (na sua forma
  mais simples), podendo ser executados normalmente:

  ```sh
  ls # mostra o conteúdo da pasta atual
  dir # mostra o conteúdo da pasta atual
  fortune # mostra uma frase aleatória de um banco de dados
  ```

  **Obs:** os parâmetros de cada comando não estão sendo considerados como dados
  nesse caso.

- **receber um dado somente**

  Outros comandos tem uma entrada básica de dados pelo terminal. Essa inserção
  de dados é feita da seguinte maneira:

  ```sh
  cat exemplo.txt
  ```

  Nesse caso o 'exemplo.txt' é o dado da _entrada de argumentos_. Assim, o comando
  pode processar essa informação e externar seu resultado.

- **receber mais que um dado**

  Comandos como `cat`, `ls` e outros, podem receber diversos argumentos (argumentos
  = dados) pela mesma _entrada de argumentos_, executando a mesma funcionalidade
  para todos esses argumentos:

  ```sh
  ls . pasta_de_exemplo # mostra o conteúdo de ambas as pastas
  cat texto1.txt texto2.txt # mostra o conteúdo de ambos os arquivos
  ```

  Existe outra categoria de comandos que recebem múltiplos argumentos. Aqueles
  que separam os argumentos. O comando `cowsay`, por exemplo, recebe um texto
  pela entrada padrão mas pode receber o argumento _Tongue_, veja o exemplo:

  ```sh
  cowsay -T U Texto de exemplo
  ```

  Nesse exemplo o 'Texto de exemplo' é o dado da entrada simples, e o 'U' é o dado
  para o -T que indica o argumento _Tongue_.

- **entrada padrão / _stdin_ (_standard input_)**

  É a entrada que recebe dados utilizando o _pipe_. Normalmente usado pela saída
  de outro comando. Veja mais detalhes à frente.

Existem ainda outras modalidades de entrada de dados, mas essas são as mais utilizadas.

Sobre os tipos de saída de dados. Existem dois tipos principais de saída de dados
para um comando, são eles:

- **saída por escrita**

  É comum os comandos apenas escreverem seus resultados na tela do terminal.
  Comandos como `ls`, `fortune`, `cowsay` apenas mostram na tela seu resultado
  para a visualização do usuário.

- **saída padrão / _stdout_ (_standard output_)**

  Quando queremos fazer operações com a saída de outro comando utilizamos a saída
  padrão desse comando. Ela passa adiante seu resultado para que o outro comando
  possa recebe-lo na sua entrada padrão.

  Essa ação de 'passar adiante' é feita utilizando o **`|`** (Pipe, derivado da
  palavra 'pipeline' (pesquise sobre)). Digamos que queremos combinar os comandos
  `fortune` e `cowsay`:

  ```sh
  fortune | cowsay
  ```

  Assim, o comando 'cowsay' vai processar o resultado do comando 'fortune'. Apesar
  de não parecer, essa funcionalidade _pipe_ tem grande importância na utilização
  de um terminal bashLike.
