## O projeto foi criado usando ruby, capybara, cucumber, BDD, Report e Page Objects como solicitado. Apliquei a técnica do SitePrism, que é uma DSL para facilitar a criação dos Page Objects dentro do projeto.

### O Projeto está organizado da seguinte forma:

- Pasta environment na raiz, essa pasta contém a url a ser testada. É comum termos mais de um ambiente de testes a ser testado, utilizando dotenv, conseguimos criar arquivos com as urls dos ambientes passar o valor parametrizado na execução do teste e assim reaproveitar o mesmo código em diferentes ambiente, sem precisar alterar nada.

- Arquivo features/data/dados.rb com os dados a serem validados, gravados em variáveis globais, assim consigo acessar e validar as variáveis de qualquer lugar do projeto.

- Arquivo features/specs/busca.feature com o arquivo gherkin com escrita voltada para o negócio, tornando o documento útil para todas as pessoas interessadas no projeto.

- Arquivo features/step_definitions/busca.rb com o arquivo da automação organizado através dos métodos criados dentro das classes dos page objects, tornando a manutenção do código muito mais viável.

- Arquivos dentro de support/pages com as classes criadas para cada página do site. Cada arquivo com sua classe e seus elementos mapeados.

- Arquivo support/env.rb com toda a config do projeto, require das dependências, Módulo Helper global para tirar screenshot em todas as execuções do teste, dotenv para setar o ambiente a ser testado, configuração do chrome_headless e chrome como default

- Arquivo support/helper.rb com a config do método para tirar screenshot dos testes de sucesso e falha

- Arquivo support/hooks.rb com os triggers before e after que são executados antes do início do teste e após a execução de cada cenário

- Arquivo reports/relatorio.html com o relatório da última execução

- Pasta results com os screenshots de sucesso e falha 

- Arquivo .gitignore com os arquivos que não serão commitados

- Arquivo cucumber.yml com a configuração do relatório

- Gemfile com as gemas utilizadas no projeto 

### Comandos para executar os testes:

```$ENV=producao cucumber```
* O teste irá abrir o Chrome e ler a variável .env.producao 

```$ENV=producao DRIVER=chrome_headless cucumber```
* O teste será executado em modo headless

```ENV=producao cucumber --format html --out=reports/relatorio.html```
* Será criado o relatório html após a execução do teste

## Requisitos para rodar o projeto:

- ter o bundle instalado 
- rodar ```$bundle install``` para instalar as dependências