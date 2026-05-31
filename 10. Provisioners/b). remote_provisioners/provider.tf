terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.33.0" # Terraform AWS provider version
    }
  }
  backend "s3" {
    bucket       = "remote-statefile-88s"
    key          = "provisioner-tfstate-dev"
    region       = "us-east-1"
    encrypt      = true # Encrypts the state file at rest
    use_lockfile = true # Enables S3 Native State Locking
  }
}

provider "aws" {
  region = "us-east-1"
}