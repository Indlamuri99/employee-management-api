resource "aws_security_group" "this" {

  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
<<<<<<< HEAD
    for_each = var.ingress_rules

    content {
      description = ingress.value.description
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  dynamic "egress" {
    for_each = var.egress_rules

    content {
      description = egress.value.description
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }

  tags = var.tags
=======

    for_each = var.ingress_rules

    content {

      description = ingress.value.description

      from_port = ingress.value.from_port

      to_port = ingress.value.to_port

      protocol = ingress.value.protocol

      cidr_blocks = ingress.value.cidr_blocks

    }

  }

  dynamic "egress" {

    for_each = var.egress_rules

    content {

      description = egress.value.description

      from_port = egress.value.from_port

      to_port = egress.value.to_port

      protocol = egress.value.protocol

      cidr_blocks = egress.value.cidr_blocks

    }

  }

  tags = var.tags

>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}