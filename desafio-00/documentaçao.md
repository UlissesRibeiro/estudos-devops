# Criando os arquivos de configurações do Terraform

Criei de forma separada os arquivos para :

- main.tf : onde esta as confs relacionadas ao provider.
- ec2.tf : relacionada ao recurso da ec2.
- output.tf : para retornar as saidas.
- securiry_group.tf : referente as grupos de seguranças com regras de entrada e saida.
- variables.tf : com as variaveis que vão ser utilizadas nos inputs.

### main.tf

Atualmente no provider não é mais necessário informar a versão do provider(ao menos em meu teste usando AWS), utilizei apenas a <i>region</i> que recebe através de variavel a região que vai ser utilizada.

### ec2.tf

Aqui como sugere o nome, é para ter as informações sobre a ec2 que quer subir, incluindo os parametros para vincular a chave ssh e o security_group. Note que tem o <i>user_data</i>, é nele que utilizado um script em shell, para instalar o apache2, onde optei por instalar diretamente na instancia, mas que pode ser adaptado para instalar o docker, rodar a imagem do apache2 e deixar o container acessivel também.

### output.tf

A única informação que esta sendo retornada aqui é o ip publico da instancia, como foi solicitado no readme.

### security_group.tf

Aqui criamos um grupo de segurança, baseado no solicitado, com as regras de entrada permitindo o acesso SSH apenas para um range ou ip especifico, através de variavel, e HTTP e HTTPS liberado para todos os ips.

### variables.tf

Literalmente o arquivos com as variaveis que vão ser usadas no projeto, optei por deixar uma var para definir o nome da instancia, além das solicitadas como região e ip de acesso SSH.