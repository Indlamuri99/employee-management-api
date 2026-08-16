resource "aws_vpc" "main" {

 cidr_block = var.vpc_cidr

 enable_dns_hostnames = true

 enable_dns_support = true


 tags = {

   Name = "enterprise-vpc"

 }

}

resource "aws_subnet" "public" {

 vpc_id = aws_vpc.main.id

 cidr_block = var.public_subnet

 map_public_ip_on_launch = true


 tags = {

 Name = "public-subnet"

 }

}
resource "aws_internet_gateway" "igw" {

 vpc_id = aws_vpc.main.id


 tags={

 Name="enterprise-igw"

 }

}
resource "aws_security_group" "k8s" {

 name="kubernetes-sg"

 vpc_id=aws_vpc.main.id


 ingress {

 from_port=22

 to_port=22

 protocol="tcp"

 cidr_blocks=["0.0.0.0/0"]

 }


 ingress {

 from_port=6443

 to_port=6443

 protocol="tcp"

 cidr_blocks=["0.0.0.0/0"]

 }
