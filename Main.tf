
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "${local.region}"
}

# terraform init
# terraform apply --auto-approve
# terraform destroy --auto-approve



