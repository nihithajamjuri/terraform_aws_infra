provider "aws" {
  region = var.aws_region
}
terraform {
  backend "s3" {
    bucket         = "nihi9-terraform-state-bucket"
    key            = "finance/terraform.tfstate"
    region         = var.aws_region
    
  }
}