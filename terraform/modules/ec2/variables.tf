variable "ami_id" {

  description = "AMI ID for EC2 instance"

  type = string

}


variable "instance_type" {

  description = "EC2 instance type"

  type = string

}


variable "subnet_id" {

  description = "Subnet ID where EC2 will be created"

  type = string

}


variable "security_group_ids" {

  description = "Security groups attached to instance"

  type = list(string)

}


variable "key_name" {

  description = "SSH Key pair name"

  type = string

}


variable "instance_name" {

  description = "Instance name tag"

  type = string

}


variable "count_instance" {

  description = "Number of instances"

  type = number

  default = 1

}


variable "root_volume_size" {

  description = "Root volume size"

  type = number

  default = 50

}


variable "enable_public_ip" {

  description = "Assign public IP"

  type = bool

  default = false

}


variable "user_data" {

  description = "Bootstrap script"

  type = string

  default = ""

<<<<<<< HEAD
}
=======
}
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
