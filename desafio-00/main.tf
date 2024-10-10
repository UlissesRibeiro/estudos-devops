provider "aws" {
  region  = var.region_name
  #us-west-2 #comentado para ser passado via variavel
  #version = "5.0" #não é mais necessário passar a versão do provider
}
