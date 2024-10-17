# Desafio 01: Kubernetes

### Motivação
Kubernetes atualmente é a principal ferramenta de orquestração e deployment de containers utilizado no mundo, práticamente tornando-se um padrão para abstração de recursos de infraestrutura.


### Objetivo
Dentro deste repositório existe um subdiretório app e um Dockerfile que constrói essa imagem, seu objetivo é:

- Construir a imagem docker da aplicação
- Criar os manifestos de recursos kubernetes para rodar a aplicação (deployments, services, ingresses, configmap e qualquer outro que você considere necessário)
- Criar um script para a execução do deploy em uma única execução.
- A aplicação deve ter seu deploy realizado com uma única linha de comando em um cluster kubernetes local
- Todos os pods devem estar rodando
- A aplicação deve responder à uma URL específica configurada no ingress

### Extras
- Utilizar Helm HELM
- Divisão de recursos por namespaces
- Utilização de health check na aplicação
- Fazer com que a aplicação exiba seu nome ao invés de "Olá, candidato!"

### Notas
Pode se utilizar o Minikube ou Docker for Mac/Windows para execução do desafio e realização de testes.

A aplicação sobe por default utilizando a porta 3000 e utiliza uma variável de ambiente $NAME

Não é necessário realizar o upload da imagem Docker para um registro público, você pode construir a imagem localmente e utilizá-la diretamente.