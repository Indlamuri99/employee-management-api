variable "name" {
  description = "Security Group Name"
  type        = string
}

variable "description" {
  description = "Security Group Description"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ingress_rules" {
  description = "Ingress Rules"

  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))

  default = []
}

variable "egress_rules" {
  description = "Egress Rules"

  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))

  default = [
    {
      description = "Allow All Outbound"
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "tags" {
  description = "Resource Tags"
  type        = map(string)
  default     = {}
}
