variable "name" {
  type    = string
  default = "local"

}

variable "env" {
  type    = string
  default = "dev"

}

variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"

}


variable "ec2_tags" {
  default = {
    Name        = "locals-demo"
    Environment = "prod"
  }
}

variable "sg_tags" {
  default = {
    Name = "locals-demo"
  }
}