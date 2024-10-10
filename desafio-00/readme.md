# Desafio 00: Infrastructure-as-code - Terraform

### Motivação
Recursos de infraestrutura em nuvem devem sempre ser criados utilizando gerenciadores de configuração, tais como Cloudformation, Terraform ou Ansible, garantindo que todo recurso possa ser versionado e recriado de forma facilitada.

### Objetivo

- Criar uma instância n1-standard-1 (GCP) ou t2.micro (AWS) Linux utilizando Terraform.
- A instância deve ter aberta somente às portas 80 e 443 para todos os endereços
- A porta SSH (22) deve estar acessível somente para um range IP definido.

### Inputs: A execução do projeto deve aceitar dois parâmetros:
- O IP ou range necessário para a liberação da porta SSH
- A região da cloud em que será provisionada a instância

### Outputs: A execução deve imprimir o IP público da instância

### Extras
- Pré-instalar o docker na instância que suba automáticamente a imagem do Apache, tornando a página padrão da ferramenta visualizável ao acessar o IP público da instância
- Utilização de módulos do Terraform

### Notas
- Pode se utilizar tanto AWS quanto GCP (Google Cloud), não é preciso executar o teste em ambas, somente uma.
- Todos os recursos devem ser criados utilizando os créditos gratuitos da AWS/GCP.
- Não esquecer de destruir os recursos após criação e testes do desafio para não haver cobranças ou esgotamento dos créditos.