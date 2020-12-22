# outputs

output "instance_ip_addr" {
  value       = aws_instance.training.*.private_ip
  description = "The private IP address of the instance."
}

output "instance_public_addr" {
  value       = aws_instance.training.*.public_dns
  description = "The public dns for instance."
}
