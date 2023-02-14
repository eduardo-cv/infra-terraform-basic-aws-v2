resource "aws_security_group" "sg_port_80" {
  description = "Acesso a porta 80"

  vpc_id = module.vpc.vpc_id
  name   = "sg_port_80"

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  tags = {
    Name = "terraform_port_80"
  }

}

resource "aws_security_group" "sg_443" {
  description = "Acesso a porta 443"

  vpc_id = module.vpc.vpc_id
  name   = "sg_443"

  ingress {
    protocol    = "tcp"
    from_port   = 443
    to_port     = 443
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  tags = {
    Name = "terraform_port_443"
  }

}

resource "aws_security_group" "sg_ssh" {
  description = "Acesso a porta 22"

  vpc_id = module.vpc.vpc_id
  name   = "sg_ssh"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["${var.cidr_meu_ip}/32"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  tags = {
    Name = "terraform_ssh"
  }

}

resource "aws_security_group" "sg_efs" {
  description = "Acesso a porta 2049"

  vpc_id = module.vpc.vpc_id
  name   = "sg_efs"

  ingress {
    protocol    = "tcp"
    from_port   = 2049
    to_port     = 2049
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  tags = {
    Name = "terraform_efs"
  }

}

resource "aws_security_group" "sg_rds_mariadb" {
  description = "Acesso a rds MYSQL"

  vpc_id = module.vpc.vpc_id
  name   = "sg_rds_mariadb"

  ingress {
    protocol    = "tcp"
    from_port   = 3306
    to_port     = 3306
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  tags = {
    Name = "terraform_mysql"
  }

}
