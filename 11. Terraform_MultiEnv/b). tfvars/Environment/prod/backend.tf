terraform {
  backend "s3" {
    bucket       = "terraform-tfvars-s3-prod"
    key          = "remote-state.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}