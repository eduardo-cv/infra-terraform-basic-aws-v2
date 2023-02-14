Duvidas : Discord 

![image](https://user-images.githubusercontent.com/82802634/218651082-f8e7f959-f409-4b24-8b58-dc203791854c.png)


Laboratório criação básica com terraform na aws.

1 - Primeiro passo e ter uma conta na aws e depois criar um usuário com credenciais de preferencia limite as polices para um acesso mais restrito.

  - abrir o painel e criar chave de acesso para regiao correspondente
  - poderia ser feito automatizado porem prefiri demosntrar desta maneira
  
  - ex. par_virginia_linux no formato pem
  - par_ohio_linux   no formato pem



2 - Baixar o AWS CLI instalar

  - https://aws.amazon.com/pt/cli/
  
  ![image](https://user-images.githubusercontent.com/82802634/218651595-ce290db9-4910-4b83-b21b-3b1804894f36.png)

  
  - abra um terminal de sua preferencia e configurar o cli.
  
  - aws configure
  - 
  - colocar as chaves de credenciais do usuario
  
  ![image](https://user-images.githubusercontent.com/82802634/218652056-a49b01df-c2f8-49ec-989c-37441883b608.png)

  
3 - baixar o arquivo terraform

  - https://developer.hashicorp.com/terraform/downloads?product_intent=terraform

4 - Criar uma pasta Ex. C:\terraform  descompactar o arquivo que foi baixado na pasta

5 - Criar a variavel de ambiente  Ex. C:\Terraform

![image](https://user-images.githubusercontent.com/82802634/218652625-5e240c2a-f162-4416-b740-52d54323723f.png)

![image](https://user-images.githubusercontent.com/82802634/218652731-29e126ad-ce3e-4233-b98d-9e80f78a7352.png)


6 - No visual studio code

<h3> ************ em variaveis.tf   ************ </h3
 
locals {
  region = "${var.regiao["us-east-2"]}" # Definer qual regiao usar "us-east-1" ou "us-east-2"
}

variable "cidr_meu_ip" {
  description = "Meu IP"
  type        = string
  default     = "0.0.0.0" # Trocar por seu ip real security acesso ssh
}

7 - Abra terminal de sua preferencia na pasta que vc baixou a infra

8 - terraform init 
  - para baixar os pacotes nescessários

9 - terraform apply --auto-approve
  - para criar a infra
   
10 - terraform destroy --auto-approve
  - para destruir a infra

<b> Resultado do laboratorio </b>

 - vpc 
 - security group
 - 1 instancia na regiao definida
 - rodando o apache com php

