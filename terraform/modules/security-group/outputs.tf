output "security_group_id" {

  description = "Security Group ID"

  value = aws_security_group.this.id

}

output "security_group_name" {

  description = "Security Group Name"

  value = aws_security_group.this.name

}

output "security_group_arn" {

  description = "Security Group ARN"

  value = aws_security_group.this.arn

<<<<<<< HEAD
}
output "kubernetes_sg_id" {
  value = aws_security_group.this.id
=======
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}