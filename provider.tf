terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-rishi-2026"
    key    = "gitops/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = var.region
}
