terraform {
 backend "s3" {

   bucket = "enterprise-devops-terraform-state"

   key = "dev/aws-infrastructure.tfstate"

   region = "us-east-1"

   dynamodb_table = "terraform-lock"

   encrypt = true

 }

