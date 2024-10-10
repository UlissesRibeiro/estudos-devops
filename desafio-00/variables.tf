variable "instance_name" {
  description = "Defina um nome para a instancia EC2"
  type        = string
  #default     = "ExampleAppServerInstance"
}

variable "region_name" {
  description = "Defina em qual região sera criada"
  type        = string
  #default     = "ExampleAppServerInstance"
}

variable "ip_access_ssh" {
    description = "informe seu ip publico que acessa a ssh"
    type        = string
  
}