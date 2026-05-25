variable "environment" {
  type    = string
  default = "prod"
}

variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name    = "terraform-state-demo"
    Project = "roboshop"
  }

}

variable "aws_security_group" {
  type    = string
  default = "allow-all-terraform-change"
}

variable "aws_security_group_description" {
  type    = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg_from_port" {
  type    = number
  default = "0"
}

variable "sg_to_port" {
  type    = number
  default = "0"
}

variable "sg_cidr_blocks" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(string)

  default = {
    Name        = "allow-all-terraform"
    Project     = "roboshop"
    Terraform   = "true"
    Environment = "dev"
  }
}


