# Terraform Settings Block
terraform {
  # Terraform Version
  required_version = ">= 1.6.5"
  required_providers {
    # AWS Provider 
    aws = {
      source  = "hashicorp/aws"
       version = ">= 5.0"
    }
    # Random Provider
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"
  profile = "default" # Defining it for default profile is Optional
}