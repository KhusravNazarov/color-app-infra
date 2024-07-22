provider "aws" {
    region = "us-east-1"  //oregon
  
}
terraform {
  required_version = ">=1.8.0, <1.9"  // terraform version 
  required_providers {       //provider version 
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.59.0" //lazy constraint
    }
  }
}