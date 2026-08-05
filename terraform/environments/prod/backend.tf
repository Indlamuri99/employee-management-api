terraform {

 backend "s3" {

  bucket = "enterprise-devops-terraform-state"

  key = "prod/aws-infrastructure.tfstate"

  region = "us-east-1"

 }

}