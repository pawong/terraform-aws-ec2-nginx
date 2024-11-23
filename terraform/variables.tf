variable "region" {
  description = "Region for AWS resources"
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "AWS Project Name"
  type        = string
  default     = "terraform-aws-ec2-nginx"
}

variable "key_name" {
  # create this ahead of time
  description = "Key to access the EC2 instance"
  type        = string
  default     = "nginx-demo"
}
