# Referências

- Publicando imagens do Docker https://docs.github.com/pt/enterprise-cloud@latest/actions/use-cases-and-examples/publishing-packages/publishing-docker-images
- Build and Push Docker Image to Docker hub https://github.com/marketplace/actions/build-and-push-docker-image-to-docker-hub
- Share built image between jobs with GitHub Actions(usando a image em jobs diferentes) https://docs.docker.com/build/ci/github-actions/share-image-jobs/
- Armazenando e compartilhando dados de um fluxo de trabalho https://docs.github.com/pt/actions/writing-workflows/choosing-what-your-workflow-does/storing-and-sharing-data-from-a-workflow
- Automate Docker Deployments: Push Your Images to EC2 with GitHub Actions https://medium.com/@S3CloudHub./automate-docker-deployments-push-your-images-to-ec2-with-github-actions-b70c4372087d
- runners-images https://github.com/actions/runner-images


<p>Por mais incrivel que pareça a documentação oficial tem erros, na parte do Push das images, o que me fez tentar rodar o workflow umas 14 vezez até ter sucesso no stop de Push da image, faltando agora fazer o deploy em um ambiente de testes, acredito que seria utilizando uma cloud, mas acredito que usando uma VM local atrelada ao repositorio via ssh funcione, irei testar.</p>

<p>Resolvi dividir o workflow em jos, como seria a melhor pratica, então tive que pesquisar como fazer para re-utilizar a image feita no build no job seguinte, então encontrei na documentação oficial como fazer tal processo, que foi realizado com sucesso, tendo agora 2 jobs:

- build
- teste
</p>

## Crição do Dockerfile

O Dockerfile foi criado da forma mais simples possivel, disponibilizado no path <b>nginx</b> :

    FROM ubuntu
    RUN apt-get update && apt-get install nginx -y
    COPY default /etc/nginx/sites-available/default
    EXPOSE 80
    EXPOSE 443
    CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

E seu arquivo de configuração <b>default</b> :

    server {
        listen 80 default_server;
        listen [::]:80 default_server;
        
        root /usr/share/nginx/html;
        index index.html index.htm;

        server_name _;
        location / {
            try_files $uri $uri/ =404;
        }
    }

Sendo uma imagem simples do nginx,liberada as portas 80 e 443, disponibilizando a pagina default do nginx.

## Pipeline

A ferramenta utilizada para esse laboratorio foi o Github Actions, sendo com 2 workflows:

- build-images.yml : Responsável por fazer o build da image Docker e o test do container, sendo na branch <b>development</b> ativa pelo evento de pull_request.
- deploy.yml : Responsável por fazer o deploy numa instância EC2 (AWS), também ativa ao receber um pull_request.

## Secrets e Confs do Github

No Github Actions utilizei de secrets para armazenar principalmente as chaves ssh privadas, no caso adicionei a privada de acessar a EC2,e um adendo, também adicionei a chave publica da EC2 no repositorio pra poder ser feito o git clone, pull, etc.

## A EC2

A instância precisa estar previamente configurada com :

- Docker
- chave ssh .pub no authorized_keys
- Liberar acesso do Github Actions no security groups, esse ponto não consegui resolver, a nivel de laboratorio deixei o acesso 0.0.0.0/0 , porém o correto seria definir um range de IPs do Github Actions, busquei tal informação e não tive exito com alguns IPs testados.