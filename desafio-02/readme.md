# Desafio DevOps: CI/CD Básico com Docker e Automação

#### Objetivo:
Configurar uma pipeline de CI/CD simples para construir, testar e publicar uma aplicação em contêineres.

#### Cenário
A sua empresa possui uma aplicação web básica, e seu objetivo é automatizar o processo de build, teste e deploy da aplicação. Esse desafio envolve criar um ambiente Docker para a aplicação e automatizar o fluxo de integração contínua (CI) e deploy contínuo (CD) com GitHub Actions ou GitLab CI.

#### Requisitos

### Contêinerização com Docker

- Crie um Dockerfile para a aplicação, seguindo as boas práticas (otimize o tamanho e a organização das instruções).
A aplicação deve ser configurada para rodar em um contêiner e ser facilmente executável em qualquer ambiente.

### Pipeline CI/CD

- Configure uma pipeline de CI/CD usando GitHub Actions ou GitLab CI para automatizar o processo.

##### Passos da pipeline:
- Build: Construa a imagem Docker da aplicação.
- Testes: Execute testes básicos da aplicação (pode ser um teste de conexão HTTP para garantir que a aplicação está rodando).
- Push da Imagem: Após o build e testes, envie a imagem para um repositório de contêineres (Docker Hub, GitHub Container Registry, etc.).
- Deploy: A pipeline deve fazer o deploy da aplicação em um ambiente de teste, utilizando docker-compose para simplificar a configuração.
Configuração do Ambiente com Docker Compose

Crie um arquivo docker-compose.yml para definir os serviços da aplicação (por exemplo, back-end, banco de dados).
Configure as redes e volumes no Docker Compose para que os contêineres possam se comunicar.

### Documentação

Crie um arquivo README.md explicando o processo para rodar a aplicação localmente usando Docker e como configurar e executar a pipeline de CI/CD.
Descreva também os passos para fazer o deploy localmente com docker-compose.

### Entregáveis

#### Repositório Git

Inclua todos os arquivos necessários (Dockerfile, docker-compose.yml, configuração da pipeline, README, etc.).
A pipeline de CI/CD deve estar configurada no repositório e acionada em todos os commits na branch main.

##### Documentação

Um arquivo README.md explicando:
- Como rodar a aplicação com Docker.
- Como configurar e rodar a pipeline de CI/CD.
- Um breve guia sobre como foi realizada a configuração do Docker Compose e do CI/CD.

#### Critérios de Avaliação

- Funcionalidade: A aplicação deve ser executada corretamente no contêiner, e a pipeline deve funcionar conforme esperado.
- Automação: O pipeline de CI/CD deve estar funcional, cobrindo build, teste e deploy da aplicação.
- Boas Práticas: Otimização básica do Dockerfile, uso de variáveis de ambiente (quando necessário) e organização do docker-compose.yml.
- Documentação: Clareza e completude na documentação técnica, facilitando a compreensão e execução do projeto.
Esse desafio cobre os fundamentos do DevOps em um contexto de CI/CD básico, Docker e automação, ideal para avaliar candidatos em início de carreira ou em níveis intermediários.