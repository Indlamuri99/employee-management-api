variable "environment" {
  type = string
}


variable "vpc_cidr" {
  type = string
}

variable "instance_name"{

    type =string
}

variable "public_subnet_cidr" {
  type = string
}


variable "private_subnet_cidr" {
  type = string
}


variable "ami_id" {
  type = string
}


variable "key_name" {
  type = string
}


variable "master_instance_type" {
  type = string
}


variable "worker_instance_type" {
  type = string
}


variable "worker_count" {
  type = number
}

variable "instance_type" {

  type = string
}

variable "aws_region" {
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
}
variable "cluster_name" {

  description = "EKS Cluster Name"

  type = string

  default = "dev-eks"

}


variable "cluster_version" {

  description = "Kubernetes Version"

  type = string

  default = "1.33"

}


variable "desired_size" {

  description = "Desired number of worker nodes"

  type = number

  default = 1

}


variable "min_size" {

  description = "Minimum number of worker nodes"

  type = number

  default = 1

}


variable "max_size" {

  description = "Maximum number of worker nodes"

  type = number

  default = 2

}


variable "eks_instance_type" {

  description = "EKS Worker Node Instance Type"

  type = string

  default = "t3.medium"

}

variable "instance_profile_name"{

    type = string
}

variable "role_name"{

    type = string
}
