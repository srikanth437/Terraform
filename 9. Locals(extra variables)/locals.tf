/* variable "instance_name" {
  type = string
  default = "${var.name}-${var.env}" # final output here is local-dev
} */

locals {
  #type = string
  default       = "${var.name}-${var.env}" # final output here is local-dev
  instance_type = "t3.micro"
  common_tags = {
    Project     = "roboshop"
    Terraform   = "true"
    Environment = "dev"
  }
  final-ec2_tags = merge(local.common_tags, var.ec2_tags)
}