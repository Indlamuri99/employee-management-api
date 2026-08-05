####################################################
# IAM Role
####################################################

resource "aws_iam_role" "this" {

  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = var.tags
}

####################################################
# Attach Managed Policies
####################################################

resource "aws_iam_role_policy_attachment" "this" {

  count = length(var.managed_policy_arns)

  role       = aws_iam_role.this.name
  policy_arn = var.managed_policy_arns[count.index]

}

####################################################
# Instance Profile
####################################################

resource "aws_iam_instance_profile" "this" {

  name = var.instance_profile_name

  role = aws_iam_role.this.name

}