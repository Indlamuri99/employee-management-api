variable "environment" {
<<<<<<< HEAD
  type = string
=======
 type = string
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}


variable "vpc_cidr" {
<<<<<<< HEAD
  type = string
}

variable "instance_name"{

    type =string
}

variable "public_subnet_cidr" {
  type = string
=======
 type = string
}


variable "public_subnet_cidr" {
 type = string
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}


variable "private_subnet_cidr" {
<<<<<<< HEAD
  type = string
=======
 type = string
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}


variable "ami_id" {
<<<<<<< HEAD
  type = string
=======
 type = string
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}


variable "key_name" {
<<<<<<< HEAD
  type = string
=======
 type = string
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}


variable "master_instance_type" {
<<<<<<< HEAD
  type = string
=======
 type = string
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}


variable "worker_instance_type" {
<<<<<<< HEAD
  type = string
=======
 type = string
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}


variable "worker_count" {
<<<<<<< HEAD
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
=======
 type = number
}
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
