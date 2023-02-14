module "ec2_instance" {
  count   = 1
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name                        = "${local.ec2_tag_name}"
  ami                         = "${local.ami_select_linux}"
  instance_type               = "${local.ec2_instance_tipo}"
  subnet_id                   = module.vpc.public_subnets[0] # SUB A
  vpc_security_group_ids      = [aws_security_group.sg_443.id, aws_security_group.sg_port_80.id, aws_security_group.sg_ssh.id]
  associate_public_ip_address = var.ec2_associate_ip_public
  key_name                    = var.ec2_key_par["${local.region}"]

  user_data = <<-EOF
    ${file("user-data.sh")}
  EOF 
}


