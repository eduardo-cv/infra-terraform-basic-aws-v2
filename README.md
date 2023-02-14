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

6 - Abra terminal de sua preferencia na pasta que vc baixou a infra

8 - terraform init

7 - terraform apply --auto-approve    

8 - terraform destroy --auto-approve


Resultado do laboratorio

 - vpc 
 - security group
 - 1 instancia na regiao definida
 - rodando o apache com php

