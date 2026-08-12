environment = "dev"

# VPC
vpc_cidr = "10.0.0.0/16"

public_subnet_1 = "10.0.1.0/24"
public_subnet_2 = "10.0.2.0/24"

availability_zone_1 = "ap-southeast-1a"
availability_zone_2 = "ap-southeast-1b"

# EC2
ami_id = "ami-0532913178263be11"   # Replace with your AMI ID
instance_type = "t3.medium"
key_name = "enterprise"

# EKS
cluster_name = "dev-eks"
cluster_version = "1.33"

desired_size = 1
min_size = 1
max_size = 2

eks_instance_type = "t3.medium"