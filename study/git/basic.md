# [**Git Basics**](#git-basics)

Conceitos básicos para utilização do git/github.

O git é um _versionador de arquivos_, ou seja, ele funciona conservando um
histórico de modificações (ou versões) dos arquivos especificados. Além disso,
acrescenta uma funcionalidade de criar ramificações no código, ou _branches_, o
que facilita a divisão de trabalhos em uma equipe de programação e a garantia de
funcionamento do código principal.

O histórico do git funciona, inicialmente, de acordo com uma lista de _commits_,
que guardam as modificações de determinada versão, e todas as informações sobre
ela. Um commit pode ser definido como um ponto na história do repositório.

## [**Instalação:**](#instalação)

No ambiente Ubuntu, com o gerenciador de pacotes apt, basta rodar o comando:

```sh
~$ sudo apt install git -y
```

Assim os comandos git já estarão disponíveis para utilização.

## [**Comandos Básicos:**](#comandos-básicos)

- **_`init`_**:

  Inicializa um repositório git na pasta atual. Utilização:

  ```sh
  ~/repos/repositório$ git init
  ```

  Para executar todos os outros comandos você deve estar dentro de um repositório
  git. Portanto, certifique-se que está em um repositório.

- **_`status`_**:

  Mostra o status dos arquivos do repositório atual. Mostra os arquivos nos
  estados _untracked_ e _tracked_.

  **Obs:**

  Em um repositório git, cada arquivo pode estar em três estados possíveis, são
  eles:

  - **_untracked_** (não rastreado):

    O estado padrão dos arquivos, quando ele é novo ou tem alterações em relação
    ao _commit anterior_ (versão anterior). Ou seja, sempre que você criar ou
    modificar arquivos ele ficará no estado untracked.

  - **_tracked_** (rastreado) / _staged_ ('no palco', 'em foco'):

    Após rodarmos o comando `git add` (veja mais à frente) para um arquivo,
    ele entrará nesse estado. Esse estado indica que o arquivo está pronto para
    ser guardado no histórico do repositório. Ele é um estado intermediário para
    os arquivos.

  - **_committed_** (comprometido):

    Após rodarmos o comando `git commit` (veja mais à frente) para os arquivos
    rastreados no momento ele passará para o estado 'commitado'. Esse estado
    indica que o arquivo já está salvo no histórico do repositório e suas
    modificações não serão perdidas.

  O significado de cada estado ficará mais claro adiante.

- **_`log`_**:

  Mostra o histórico de versões (commits) do repositório atual e suas informações:
  id do commit, autor e data. Utilização:

  ```sh
  ~/repos/repositório$ git log
  ```

- **_`add`_**:

  Muda os arquivos não rastreados indicados para o estado staged, permitindo serem
  commitados mais à frente. Utilização:

  Suponha que modificamos o arquivo 'README.md' e queremos colocar ele em staged:

  ```sh
  ~/repos/repositório$ git add README.md
  ```

  **Obs:** quando queremos adicionar todos os arquivos do diretório atual podemos
  rodar: `git add .`, se você está na raiz do repositório todas as alterações
  serão adicionadas (semelhante ao comando `git add -A`/ `git add --all`)

- **_`commit`_**:

  Grava no histórico os arquivos em estado staged. Atenção: ele ignora os arquivos
  fora do estado staged, então tenham certeza que os arquivos desejados estão
  nesse estado (utilize o `git status`).

  Para gravarmos um commit devemos dar uma _mensagem de commit_ para o comando,
  da seguinte forma:

  ```sh
  ~/repos/repositório$ git commit -m 'mensagem de commit' # '-m' vem de 'message'
  ```

  **Obs:** como esse comando utiliza a entrada padrão não faz-se necessário o uso
  das aspas, mas as utilizamos para melhor organização.

**Exemplo simples:**

Digamos que queremos criar um repositório git chamado 'repo' e colocar o arquivo
README.md com o conteúdo abaixo:

```md
# Comandos básicos de git
```

Seguindo os passos:

```sh
~/repos$ mkdir repo # cria a pasta 'repo'
~/repos$ cd repo # entra na pasta
~/repos/repo$ git init # inicia o repositório git
~/repos/repo$ touch README.md # cria o arquivo 'README.md'
~/repos/repo$ echo '# Comandos básico de git' >> README.md
# adiciona o texto indicado ao final do arquivo (pesquise sobre o comando echo)
~/repos/repo$ git status # verificando o estado dos arquivos
~/repos/repo$ git add vREADME.md # muda o arquivo para staged
~/repos/repo$ git commit -m 'adicionando o arquivo README'
# cria o ponto na história do repositório com o novo arquivo
~/repos/repo$ git status # confirmando o estado dos arquivos
~/repos/repo$ git log # verificando o histórico do repositório
```

## [**Manipulação de branches:**](#manipulação-de-branches)

Como já discutido anteriormente, em um repositório git existe a possibilidade da
criação de ramificações ou 'galhos' (branches). Com a utilização de branches
podemos desenvolver diferentes _features_ (funcionalidades) paralelamente e ao
final somente adicionarmos essas modificações na branch _main_ (veja o comando
`merge`), a branch principal.

Para a manipulação das branches temos os seguintes comandos:

- **_`branch`_**:

  Na verdade, um comando de múltipla utilidade, podendo:

  - **criar branches**

    Suponha que queremos criar uma branch 'branch-de-teste', então rodamos:

    ```sh
    ~/repos/repo$ git branch branch-de-teste
    ```

  - **deletar branches**

    Agora vamos deletar a branch anterior:

    ```sh
    ~/repos/repo$ git branch branch-de-teste -d # o '-d' indica '--delete' (deletar)
    ```

  - **renomear a branch atual**

    Suponha que estamos na branch 'branch1' e queremos renomear para 'branch2':

    ```sh
    ~/repos/repo$ git branch -m branch2 # o '-m' indica '--move' (mover)
    ```

    Esse comando funciona semelhante ao comando `mv` de um terminal _bashLike_

- **_`checkout`_**:

  Esse também é um comando com várias funções:

  - **trocar entre branches**

    Suponha que estamos na branch 'main' e queremos mudar para a branch 'backup':

    ```sh
    ~/repos/repo$ git checkout -b backup
    ```

    **Obs:** caso a branch não exista o comando se encarrega de criar a branch e
    trocar para ela imediatamente.

  - **verificar commits passados**

    Quando queremos rever uma versão anterior do nosso repositório podemos copiar
    o _hash_ do commit e dar o checkout nele. Primeiramente pegamos o id/hash do
    commit desejado usando o comando `git log`.

    Suponhamos que o hash do commit é '123456' (pode ser tanto o hash de 6 dígitos
    quanto o completo), queremos ir para essa versão:

    ```sh
    ~/repos/repo$ git checkout 123456
    ```

    **Obs:** nesse comando não devemos fazer alterações no commit, apenas vê-las,
    caso precise modificar um commit devemos usar o comando `rebase`.

- **_`merge`_**:

  É o comando utilizado para mesclar duas, ou mais, branches. Imagine que um
  desenvolvedor estava criando uma nova funcionalidade na branch 'feat/funcionalidade'
  e deseja coloca-lá na branch principal. Assim, rodamos na branch main:

  ```sh
  ~/repo$ git merge feat/funcionalidade
  ```

  Não é vital mas recomenda-se a criação de mensagens ao mesclar branches. Isso
  pode ser feito de forma semelhante quando fazemos um commit.

  ```sh
  ~/repo$ git merge feat/funcionalidade -m 'adicionando funcionalidade'
  ```

  **Obs1:** após a mesclagem das branches podemos deletá-las sem perda alguma.

  **Obs2:** existem casos em que existe conflito ao _mergear_ branches. Quando
  isso acontece, o git tenta concertar automaticamente, porém, algumas vezes
  devemos fazer essas correções manualmente.

  **Obs3:** quando não indicamos o tipo de merge o git se encarrega de simplificar
  esse merge, existem 2 tipos de merge (_fast-forward_ e _3way_). O primeiro
  se encarrega de mesclar em um único branch, sem conservar a estrutura de árvore,
  e é a definida por padrão. Já a conserva a estrutura de árvore (por isso
  _three way_). Para forcar o método 3way podemos rodar: `git merge --no-ff`.

## [**Sincronização com o Servidor Remoto:**](#sincronização-com-o-servidor-remoto)

O funcionamento de um repositório git não depende fortemente de um servidor remoto
como o _Github_, _BitBucket_ ou _GitLab_, porém, em certas ocasiões é de grande
utilidade um servidor remoto. Aqui utilizaremos o Github como padrão mas as rotinas
serão semelhantes em qualquer outro serviço de _hosting_ de git.

Para a manutenção do repositório remoto do git fazemos uso de 5 principais comandos,
são eles:

- **_`remote`_**:

  É utilizado para conectar ou desconectar um repositório local já existente ao
  seu respectivo repositório remoto. Suponha que queremos conectar o repositório
  local 'repo' ao repositório 'repo' no Github do usuário 'user'.

  Rodamos os seguintes passos:

  ```sh
  ~/repo$ git remote add origin https://github.com/user/repo.git
  ```

  A partir daí o termo 'origin' será uma referencia para o repositório remoto.

  E caso quisermos remover essa conexão rodamos:

  ```sh
  ~/repo$ git remote remove origin # o origin referencia o repositório remoto
  ```

- **_`clone`_**:

  É comum já termos um repositório criado no github e precisamos clona-lo localmente,
  e é para isso que esse comando serve. Suponha que temos o repositório 'repo' do
  usuário 'user' no github, clonamos ele da seguinte maneira:

  ```sh
  ~$ git clone https://github.com/user/repo.git
  ```

  Assim, é criada a pasta 'repo' no diretório atual e podemos entrar nela para
  utilizar os comandos do git.

- **_`push`_**:

  Quando temos commits locais e precisamos passa-los para o _remote repo_ podemos
  fazê-lo usando o comando `push`. Do inglês 'empurrar', esse comando empurra,
  manda ou envia o histórico local para o remoto, sincronizando ambos.

  Podemos rodar como indicado abaixo:

  ```sh
  ~/repo$ git push
  ```

  **Obs1:** pode ocorrer de haver uma incompatibilidade entre os históricos local
  e remoto, o que pode ocorre por vários motivos, sendo o mais comum, a diferença
  de um commit local com um commit remoto.

  **Obs2:** o parâmetro '-f' pode forçar o push para o remoto, resolvendo o problema
  indicado acima. Entretanto, **não é uma prática saudável a utilização desse parâmetro**,
  evite.

- **_`pull`_**:

  As vezes, também é necessário atualizar o repositório local com o conteúdo do
  remoto. Isso pode ser feito 'puxando' o conteúdo do servidor remoto. Do inglês,
  puxar, o comando `pull` faz exatamente o que diz, ele pega o conteúdo remoto
  e baixa localmente.

  Rodamos ele assim:

  ```sh
  ~/repo$ git pull
  ```

  **Obs:** assim como o comando `push`, ele aceita o parâmetro '-f' para forçar
  a sobreposição, porém não é uma prática saudável.

- **_`fetch`_**:

  E por fim, o comando `fetch` sincroniza ambos os repositórios, o local e o remoto.
  Ele dá _pull_ e _push_ deixando assim os repositórios sincronizados. Utilização:

  ```sh
  ~/repo$ git fetch
  ```

Quando temos um _fork_ (uma ramificação) de um repositório e queremos mergear a
branch main desse no original precisamos criar um _pull request_. O pull request
é um pedido para mesclagem das branches que deve ser aprovado pelo responsável
do repositório original. A criação desses pull requests pode ser feita diretamente
do serviço de git remoto, nesse caso, o Github.

## [**Comandos Mais Avançados:**](#comandos-mais-avançados)

- **_`add --patch`_**

  É importante sempre manter nossos commits o mais limpos possível, seja nas suas
  mensagens e até mesmo no agrupamento das modificações. Certas vezes modificamos
  arquivos mas seus commits devem ser diferentes. O parâmetro `patch` nos ajuda
  a adicionar somente determinadas partes desse arquivo.

  Imagine que modificamos um arquivo 'index.html', adicionando um header e um
  footer, cada um com seu conteúdo. Porém, como queremos manter nosso histórico
  de commits limpo **devemos** separar em dois commits. Podemos fazê-lo assim:

  ```sh
  # escolhemos o 'patch'(ou remendo) desejado, o header, digamos e commitamos
  ~/repo$ git add --patch index.html
  ~/repo$ git commit -m 'feat: adicionado o header e seu conteúdo'
  # novamente, escolhemos o patch desejado e commitamos
  ~/repo$ git add --patch index.html
  ~/repo$ git commit -m 'feat: adicionado o footer e seu conteúdo'
  ```

  Assim, nosso histórico permanece mais limpo e de fácil entendimento.

- **_`commit --amend`_**

  Como dito antes, **é importante manter nosso histórico de commits limpo!** E o
  parâmetro `amend` nos ajuda nisso. Ele permite alterar o commit anterior, seja
  adicionando modificações esquecidas ou mesmo mudar a mensagem de commit.

  Suponha que esquecemos de commitar a modificação do arquivo 'index.py' e também
  existem um erro na mensagem de commit.

  A mensagem anterior está como: 'feat: adicionado conteudo ao arquivo'
  e desejamos mudar para: 'feat: adicionado conteúdo do arquivo index.py'

  Podemos modificar assim:

  ```sh
  ~/repo$ git add index.py
  ~/repo$ git commit -m 'feat: adicionado conteúdo do arquivo index.py' --amend
  ```

- **_`reset`_**

  As vezes é necessário retroceder alguns commits ou mesmo tirar um arquivo do
  stage. Podemos fazer essas operações com o comando `git reset`.

  Queremos tirar o arquivo 'pasta/arquivo.txt' do estado staged que foi adicionado
  por engano. Para isso rodamos:

  ```sh
  ~/repo$ git reset HEAD -- pasta/arquivo.txt
  ```

  **Obs1:** esse comando recebe por padrão o commit para onde queremos resetar, e
  o 'HEAD' (cabeça) representa o ultimo commit. E em seguida recebe o arquivo
  desejado.

  Podemos ainda voltar 3 commits atrás, por quais razões. Para isso rodamos:

  ```sh
  ~/repo$ git reset HEAD~3
  ```

  **Obs2:** existem ainda dois parâmetros úteis, são eles: `--soft` e `--hard`.
  O soft, é o padrão, reseta para o commit indicado mas conservando as modificações
  criadas no caminho. Já o hard remove todas as alterações feitas.

- **_`rebase`_**

  Para a manipulação mais refinada dos commits anteriores podemos utilizar o
  comando `git rebase`. Com ele podemos editar os commits mais anteriores ainda,
  seria como um `commit --amend` mais refinado.

  Existem diversas opções ao utilizar esse comando, alguns exemplos são:

  - **edit**: edição simples do commit
  - **reword**: mudança da mensagem de commit
  - **squash**: une diversos commits em um só

  Como existem muitos comandos para o rebase podemos roda-lo assim:

  ```sh
  ~/repo$ git rebase -i # '-i' ou '--interactive', de interativo
  ```

  Teremos a manipulação interativa do rebase.
