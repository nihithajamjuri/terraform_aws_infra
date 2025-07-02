provider "aws" {
  region = var.aws_region
}
terraform {
  backend "s3" {
    bucket         = "nihi9-terraform-state-bucket"
    key            = "finance/terraform.tfstate"
    region         = var.aws_region

  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.12"
}