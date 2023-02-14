
# # Obtenha o endereço IP externo usando o comando curl
# MY_IP="$(curl -s http://checkip.amazonaws.com)"

variable "regiao" {
  type = map(string)

  default = {
    "us-east-1" = "us-east-1"
    "us-east-2" = "us-east-2"
  }
}

############################ ALTERAR AQUI ############################

locals {
  region = "${var.regiao["us-east-2"]}" # Pode usar "us-east-1" ou "us-east-2"
}

locals {
  ec2_tag_name = "ec2_terraform"  # Trocar tag
}

variable "cidr_meu_ip" {
  description = "Meu IP"
  type        = string
  default     = "0.0.0.0" # Trocar por seu ip security acesso ssh
}

locals {
  ec2_instance_tipo = "${var.ec2_instance_type["t2.micro"]}"  # Pode usar "t2.micro" ou "t3.micro"
}

locals {
  availability_zones = ["${local.region}a", "${local.region}b"] # Modificar se quiser mais AZs
}

locals {
  ami_select_linux = "${var.amis_debian_11["${local.region}"]}"
}

################################ EC2 #################################

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "vpc-terraform"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# variable "availability_zones_count" {
#   description = "Zonas de Disponibilidade"
#   type        = number
#   default     = 2
# }

variable "public_subnet_count" {
  description = "Number of public subnets."
  type        = number
  default     = 2
}

variable "private_subnet_count" {
  description = "Number of private subnets."
  type        = number
  default     = 2
}

# variable "availability_zones" {
#   description = "List of Availability Zones (AZs) for the VPC."
#   type        = list(string)

#   default = [
#     "us-east-1a",
#     "us-east-1b",
#     "us-east-1c",
#     "us-east-1d",
#     "us-east-1e",
#     "us-east-1f"
#   ]
 
# }

variable "public_subnet_cidr_blocks" {
  description = "Available cidr blocks for public subnets."
  type        = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24",
    "10.0.8.0/24"
  ]
}

variable "private_subnet_cidr_blocks" {
  description = "Available cidr blocks for private subnets."
  type        = list(string)
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
    "10.0.104.0/24",
    "10.0.105.0/24",
    "10.0.106.0/24",
    "10.0.107.0/24",
    "10.0.108.0/24"
  ]
}

################################ VPC #################################

variable "amis_debian_11" {
  type = map(string)

  default = {
    "us-east-1" = "ami-0fec2c2e2017f4e7b" # virginia  
    "us-east-2" = "ami-06a7641d5bd7bdc65" # ohio
  }
}

variable "amis_amz_linux2_510" {
  type = map(string)

  default = {
    "us-east-1" = "ami-0aa7d40eeae50c9a9" # virginia  
    "us-east-2" = "ami-05bfbece1ed5beb54" # ohio
  }
}

variable "ec2_associate_ip_public" {
  type    =  bool
  default = true
}

variable "ec2_key_par" {
  type = map(string)

  default = {
    "us-east-1" = "par_virginia_linux" # virginia 
    "us-east-2" = "par_ohio_linux" # ohio
  }
}

variable "ec2_instance_type" {
  type = map(string)

  default = {
    "t2.micro" = "t2.micro"
    "t3.micro" = "t3.micro"
  }
}








