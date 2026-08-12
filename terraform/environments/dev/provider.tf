terraform {

<<<<<<< HEAD
  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 5.0"

    }

  }
=======
 required_providers {

   aws = {

     source = "hashicorp/aws"

     version = "~> 5.0"

   }

 }
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7

}


provider "aws" {

<<<<<<< HEAD
  region = var.aws_region
=======
 region = var.aws_region
>>>>>>> 74950808049ba5fe4b83f659248308a2a9fea6e7

}