output "instance_ids" {

  description = "EC2 instance IDs"

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

}



output "availability_zones" {

  description = "Availability zones"

  value = aws_instance.server[*].availability_zone

}