# configurables

variable "aws_cli_profile" {
  type        = string
  description = "aws cli profile to look for"
}

variable "region" {
  type = string
}

variable "instance_count" {
  type = number
}

variable "instance_type" {
  type = string
}

variable "ami" {
  type = string
}

variable "key_pair_name" {
  type = string
}
