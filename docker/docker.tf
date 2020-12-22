terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = var.aws_cli_profile
  region  = var.region
}

resource "aws_security_group" "training_ssh" {
  name        = "training_ssh"
  description = "SSH Security Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "training" {
  count = var.instance_count

  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_pair_name
  security_groups = ["default", aws_security_group.training_ssh.name]

  user_data = file("cloud-init.sh")
}
