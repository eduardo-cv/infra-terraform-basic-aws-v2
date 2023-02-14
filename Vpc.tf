module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name

  cidr = var.vpc_cidr_block

  # zonas de disponibilidade da lista "var.vpc_az"
  azs = "${local.availability_zones}"

  # sub-redes privadas da lista "var.private_subnet_cidr_blocks"
  private_subnets = slice(var.private_subnet_cidr_blocks, 0, var.private_subnet_count)

  # sub-redes públicas da lista "var.public_subnet_cidr_blocks"
  public_subnets = slice(var.public_subnet_cidr_blocks, 0, var.public_subnet_count)

  enable_nat_gateway = false # Colocar false pelo motivo de cobrança da aws

}
