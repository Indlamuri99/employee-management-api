variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}


variable "subnet_id" {
  description = "Subnet where EC2 will be created"
  type        = string
}


variable "security_group_ids" {
  description = "Security groups attached to EC2"
  type        = list(string)
}

