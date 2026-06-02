variable "project" {
    default = "roboshop"
}

variable "instance_type" {
    default = {
        dev = "t3.micro"
        uat = "t3.small"
        prod = "t3.medium"
    }
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
  
}