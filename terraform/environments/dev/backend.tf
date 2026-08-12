terraform {
<<<<<<< HEAD
  backend "s3" {
    bucket         = "enterprise-devops-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
=======

 backend "s3" {

   bucket = "enterprise-devops-terraform-state"

   key = "dev/aws-infrastructure.tfstate"

   region = "us-east-1"

   dynamodb_table = "terraform-lock"

   encrypt = true

 }

>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7
}