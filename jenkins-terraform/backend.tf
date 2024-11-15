terraform {
  backend "s3" {
    bucket         = "devsecops-project-demo-amine"
    region         = "us-east-1"
    key            = "devsecops-demo/jenkins/terraform.tfstate"
    dynamodb_table = "dynamodb-state-locking"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}