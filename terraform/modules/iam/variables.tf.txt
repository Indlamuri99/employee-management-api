variable "role_name" {
  description = "IAM Role Name"
  type        = string
}

variable "instance_profile_name" {
  description = "IAM Instance Profile Name"
  type        = string
}

variable "managed_policy_arns" {
  description = "List of IAM Managed Policy ARNs"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags for IAM resources"
  type        = map(string)
  default     = {}
}