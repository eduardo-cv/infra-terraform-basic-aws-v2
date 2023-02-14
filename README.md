Discord 

![image](https://user-images.githubusercontent.com/82802634/218651082-f8e7f959-f409-4b24-8b58-dc203791854c.png)


Laboratório criação básica com terraform na aws.

Primeiro passo e ter uma conta na aws e depois criar um usuário com credenciais de preferencia limite as polices para um acesso mais restrito.

2 - Baixar o AWS CLI instalar e configurar.

  - https://aws.amazon.com/pt/cli/
  
  - abra um terminal de sua preferencia 
  
  - aws configure
  
3 - baixar o arquivo terraform

  - https://developer.hashicorp.com/terraform/downloads?product_intent=terraform

4 - Criar uma pasta Ex. C:\terraform  descompactar o arquivo que foi baixado na pasta

5 - Criar a variavel de ambiente  Ex. C:\terraform

6 - abrir o painel e criar chave de acesso para regiao correspondente

  - poderia ser feito automatizado porem prefiro desta maneira
  
  - ex. par_virginia_linux no formato pem
  - par_ohio_linux   no formato pem


7 - No visual studio code

<h3> ************ em variaveis.tf   ************ </h3
 
locals {
  region = "${var.regiao["us-east-2"]}" # Definer qual regiao usar "us-east-1" ou "us-east-2"
}

variable "cidr_meu_ip" {
  description = "Meu IP"
  type        = string
  default     = "0.0.0.0" # Trocar por seu ip real security acesso ssh
}

8 - Abra terminal de sua preferencia na pasta que vc baixou a infra

9 - terraform init 
  - para baixar os pacotes nescessários

10 - terraform apply --auto-approve
  - para criar a infra
   
11 - terraform destroy --auto-approve
  - para destruir a infra

<b> Resultado do laboratorio </b>

 - vpc 
 - security group
 - 1 instancia na regiao definida
 - rodando o apache com php

