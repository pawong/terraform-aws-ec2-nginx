output "ec2_instance_public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = module.ec2_instances[*].public_ip
}

output "ec2_instance_public_dns" {
  description = "Public DNS addresses of EC2 instances"
  value       = module.ec2_instances[*].public_dns
}
