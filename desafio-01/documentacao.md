### Build da image

Sem fazer nenhuma alteração no Dockerfile fornecido apenas fiz o build com :

    docker build -t desafio-k8s:0.1

E subi a image no Docker Hub :

    docker tag desafio-k8s:0.1 ulissestark/desafio-k8s:0.1
    docker push ulissestark/desafio-k8s:0.1

E nas maquinas workers fiz o pull da image :

    docker pull ulissestark/desafio-k8s:0.1

### Criação de manifestos

Fiz da forma mais simples possivel, sendo o deploy :

    kubectl create deploy app-k8s --image ulissestark/desafio-k8s:0.1 --port 3000 --replicas 3 --dry-run=client -o yaml > deploy-app.yaml

O ingress :

    kubectl create ingress app-k8s-ingress --rule="app-k8s.local/*=app-k8s-service:3000" --dry-run=client -o yaml > ingress.yaml

O service fiz de forma manual :

    kubectl expose deploy app-k8s --target-port 3000 --type LoadBalancer

Mas acredito que fazendo :

    kubectl expose deploy app-k8s --target-port 3000 --type LoadBalancer --dry-run=client -o yaml > service.yaml

Resolveria também.

Adicionei a url ao meu arquivo de hosts e paz.