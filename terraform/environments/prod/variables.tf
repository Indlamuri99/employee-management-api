variable "environment" {
 type = string
}


variable "vpc_cidr" {
 type = string
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