module "vpc" {

  source = "../../modules/vpc"

  environment = var.environment

  vpc_cidr = var.vpc_cidr

  public_subnet_cidr = var.public_subnet_cidr

  private_subnet_cidr = var.private_subnet_cidr

}


module "security_group" {

  source = "../../modules/security-group"

  vpc_id = module.vpc.vpc_id

  environment = var.environment

}



module "master" {

  source = "../../modules/ec2"


  ami_id = var.ami_id

  instance_type = var.master_instance_type

  subnet_id = module.vpc.private_subnet_id


  security_group_ids = [
    module.security_group.kubernetes_sg_id
  ]


  key_name = var.key_name

  instance_name = "dev-k8s-master"

  count_instance = 1

}



module "worker" {

  source = "../../modules/ec2"


  ami_id = var.ami_id

  instance_type = var.worker_instance_type


  subnet_id = module.vpc.private_subnet_id


  security_group_ids = [
    module.security_group.kubernetes_sg_id
  ]


  key_name = var.key_name


  instance_name = "dev-k8s-worker"


  count_instance = var.worker_count

}