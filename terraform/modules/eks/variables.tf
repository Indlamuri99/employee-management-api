variable "cluster_name" {

  description = "EKS Cluster Name"

  type = string

}


variable "cluster_version" {

  description = "EKS Kubernetes Version"

  type = string

  default = "1.33"

}


variable "subnet_ids" {

  description = "List of subnet IDs"

  type = list(string)

}


variable "instance_types" {

  description = "EKS Worker Node Instance Types"

  type = list(string)

  default = ["t3.medium"]

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