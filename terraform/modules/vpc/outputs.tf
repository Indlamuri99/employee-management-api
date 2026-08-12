<<<<<<< HEAD
output "vpc_id" {

  value = aws_vpc.main.id

}

output "public_subnet_id" {

  value = aws_subnet.public_1.id

}

output "public_subnet_ids" {

  value = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
=======
output "instance_ids" {

 description = "Created EC2 instance IDs"

 value = aws_instance.server[*].id

}


output "private_ips" {

 description = "Private IP addresses"

 value = aws_instance.server[*].private_ip

}


output "public_ips" {

 description = "Public IP addresses"

 value = aws_instance.server[*].public_ip

}


output "instance_arns" {

 description = "EC2 instance ARNs"

 value = aws_instance.server[*].arn
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7

}