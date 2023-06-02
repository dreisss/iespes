# Workflows

## Github Flow & Git Flow:

A ampla utilização de repositórios git veio acompanhada de diversos modelos de
padronização, seja padronizações nas mensagens dos commits, na utilização das
branches entre outros aspectos.

Alguns dos _flows_ (as padronizações) mais utilizadas e conhecidas são: _Git Flow_
e o _Github Flow_. Vejamos as principais características de cada flow:

- **Git Flow**

  É um workflow focado no desenvolvimento de softwares de grande escala, com muitos
  desenvolvedores, desenvolvimento de diversas features em paralelo e a manutenção
  de uma versão já no ar e aberto ao público.

  Quando temos todas essas demandas é necessário um controle rigoroso do código,
  prevenindo a inutilização do código no ar, e esse controle é feito seguindo um
  padrão de branches.

  Por padrão, existem duas branches principais: _main_ e _develop_. A branch main
  é onde o código em produção (no ar) está e é a versão que o usuário verá. E a
  branch develop é onde os desenvolvedores propriamente desenvolvem novas features:

  <a align="center" href="https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=Gitflow%20is%20a%20legacy%20Git,software%20development%20and%20DevOps%20practices.">
    <div align="center">
      <img width="60%" align="center" src="https://wac-cdn.atlassian.com/dam/jcr:a13c18d6-94f3-4fc4-84fb-2b8f1b2fd339/01%20How%20it%20works.svg?cdnVersion=506">
      <br>
      <p align="right"> Fonte: Atlassian Bitbucket </p>
    </div>
  </a>

  A partir da branch develop criam-se as branches de feature, seguindo o nome
  padrão 'feature/\<nome da funcionalidade\>'. E ao finalizar a funcionalidade
  mergeamos para a branch develop e podemos deletar a branch de feature:

  <a align="center" href="https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=Gitflow%20is%20a%20legacy%20Git,software%20development%20and%20DevOps%20practices.">
    <div align="center">
      <img width="60%" align="center" src="https://wac-cdn.atlassian.com/dam/jcr:34c86360-8dea-4be4-92f7-6597d4d5bfae/02%20Feature%20branches.svg?cdnVersion=506">
      <br>
      <p align="right"> Fonte: Atlassian Bitbucket </p>
    </div>
  </a>

  Assim conseguimos desenvolver cada funcionalidade nova paralelamente sem
  interferir nas outras. Quando temos algumas novas funcionalidades e desejamos
  criar uma nova versão do nosso software devemos fazer o seguinte procedimento:

  - Cria um fork (ramificação dessa branch) da branch develop e nessa branch faz
    os últimos ajustes. Essa branch é chamada _release_ e é nomeada da seguinte
    forma: 'release/\<nova versão do software\>'.

  - Quando terminamos a preparação da branch release podemos mergear ela na branch
    main e na branch develop, daí podemos deleta-la.

  Veja o esquema abaixo:

  <a align="center" href="https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=Gitflow%20is%20a%20legacy%20Git,software%20development%20and%20DevOps%20practices.">
    <div align="center">
      <img width="60%" align="center" src="https://wac-cdn.atlassian.com/dam/jcr:8f00f1a4-ef2d-498a-a2c6-8020bb97902f/03%20Release%20branches.svg?cdnVersion=506">
      <br>
      <p align="right"> Fonte: Atlassian Bitbucket </p>
    </div>
  </a>

  Ainda existem as branches de _hotfix_, elas são branches derivadas da branch
  main, normalmente utilizadas para solucionar bugs ou problemas no software
  aberto ao público:

  <a align="center" href="https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow#:~:text=Gitflow%20is%20a%20legacy%20Git,software%20development%20and%20DevOps%20practices.">
    <div align="center">
      <img width="60%" align="center" src="https://wac-cdn.atlassian.com/dam/jcr:cc0b526e-adb7-4d45-874e-9bcea9898b4a/04%20Hotfix%20branches.svg?cdnVersion=506">
      <br>
      <p align="right"> Fonte: Atlassian Bitbucket </p>
    </div>
  </a>

  Note que uma branch hotfix deve ser mesclada tanto na branch main quanto na
  branch develop para manter as duas atualizadas.

  Além da utilização de branches, o git flow utiliza _tags_ (rótulos) para 'marcar'
  pontos importantes da história do repositório, geralmente as suas versões.

  A utilização do git flow pode ser difícil de maneira pura, por isso podemos
  instalar a ferramenta _git-flow_. Na distribuição Ubuntu de Linux basta rodar:

  ```sh
  ~$ apt install git-flow
  ```

  Assim obteremos acesso a comandos como: `git flow init`, `git flow release start`,
  `git flow hotfix start`, etc.

  Nem todos os detalhes do git flow puderam estar listados aqui. Para mais
  informações pesquise na internet sobre.

- **Github Flow**

  Pode ser considerada uma versão simplificada do git flow. É amplamente utilizada
  em projetos de pequena escala e com poucos desenvolvedores (de 2 a 5, por exemplo).
  Possui um workflow mais simplificado e pode ser explicado no esquema abaixo:

  <a align="center" href="https://github.com/SvanBoxel/release-based-workflow/issues/1">
    <div align="center">
      <img width="60%" align="center" src="https://user-images.githubusercontent.com/6351798/48032310-63842400-e114-11e8-8db0-06dc0504dcb5.png">
      <br>
      <p align="right"> Fonte: SvanBoxel (Github user) </p>
    </div>
  </a>

  Esse workflow segue os seguintes passos:

  - crie um fork da branch main chamada 'feature/\<nome da funcionalidade\>'
  - desenvolva e commit suas alterações na branch criada
  - quando finalizar suas modificações crie um pull request
  - os responsáveis pelo repositório devem aceitar ou recusar seu pull request
  - caso aceito, seu código será mergeado e entrará no código em produção

E portanto, temos um ambiente de desenvolvimento organizado de acordo com nossas
necessidades. É importante notar que existem outros workflow e não podemos
classificá-los entre 'melhor' ou 'pior', cada um depende de seu contexto e
aplicação.
