resource "aws_vpc" "main" {

<<<<<<< HEAD
  cidr_block = var.vpc_cidr

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "enterprise-vpc"
  }

}

resource "aws_subnet" "public_1" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.public_subnet_1

  availability_zone = var.availability_zone_1

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1"
  }

}

resource "aws_subnet" "public_2" {

  vpc_id = aws_vpc.main.id

  cidr_block = var.public_subnet_2

  availability_zone = var.availability_zone_2

  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2"
  }

}

resource "aws_internet_gateway" "igw" {

  vpc_id = aws_vpc.main.id

  tags = {
    Name = "enterprise-igw"
  }

}

resource "aws_route_table" "public" {

  vpc_id = aws_vpc.main.id

  route {

    cidr_block = "0.0.0.0/0"

    gateway_id = aws_internet_gateway.igw.id

  }

  tags = {
    Name = "public-route-table"
  }

}

resource "aws_route_table_association" "public_1" {

  subnet_id = aws_subnet.public_1.id

  route_table_id = aws_route_table.public.id

}

resource "aws_route_table_association" "public_2" {

  subnet_id = aws_subnet.public_2.id

  route_table_id = aws_route_table.public.id
=======
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
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7

}