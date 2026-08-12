module "vpc" {

  source = "../../modules/vpc"

  vpc_cidr = var.vpc_cidr
  key_name = var.key_name
  ami_id = var.ami_id
  instance_name = var.instance_name


  public_subnet_1 = var.public_subnet_1
  public_subnet_2 = var.public_subnet_2

  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2

}

module "security_group" {

  source = "../../modules/security-group"

  name        = "${var.environment}-kubernetes-sg"
  description = "Security Group for Kubernetes Cluster"

  vpc_id = module.vpc.vpc_id

  ingress_rules = [
    {
      description = "SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "HTTP"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      description = "HTTPS"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

}

module "ec2" {

  source = "../../modules/ec2"

  instance_name = "${var.environment}-employee-api-server"

  ami_id = var.ami_id

  instance_type = var.instance_type

  key_name = var.key_name

  subnet_id = module.vpc.public_subnet_id

  security_group_ids = [
    module.security_group.security_group_id
  ]

}

module "ecr" {

  source = "../../modules/ecr"

  repository_name = "employee-management-api"

}

module "iam" {

  source = "../../modules/iam"
  instance_profile_name = var.instance_profile_name
  role_name = var.role_name


}

module "eks" {

  source = "../../modules/eks"

  cluster_name    = var.cluster_name

  cluster_version = var.cluster_version

  subnet_ids = module.vpc.public_subnet_ids

  instance_types = [
    var.eks_instance_type
  ]

  desired_size = var.desired_size

  min_size = var.min_size

  max_size = var.max_size

}