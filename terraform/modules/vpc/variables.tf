variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}


<<<<<<< HEAD


=======
variable "subnet_id" {
  description = "Subnet where EC2 will be created"
  type        = string
}


variable "security_group_ids" {
  description = "Security groups attached to EC2"
  type        = list(string)
}

>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7

variable "instance_name" {
  description = "EC2 instance name"
  type        = string
}


variable "key_name" {
  description = "SSH key pair name"
  type        = string
}


variable "root_volume_size" {
  description = "Root disk size"
  type        = number
  default     = 30
}


variable "count_instance" {
  description = "Number of EC2 instances"
  type        = number
  default     = 1
<<<<<<< HEAD
}
variable "vpc_cidr" {

  type = string

}



variable "public_subnet_1" {
  type = string
}

variable "public_subnet_2" {
  type = string
}

variable "availability_zone_1" {
  type = string
}

variable "availability_zone_2" {
  type = string
=======
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}