/* variable "instance_type" {
  type = map(any)
  default = {

    mangodb  = "t3.micro"
    cart     = "t3.micro"
    shipping = "t3.micro"
  }

} */

variable "ami_id" {
  type    = string
  default = "ami-0220d79f3f480ecf5"

} 


variable "instances" {
    type = list
    default = ["mongodb", "redis"]
}

variable "zone_id" {
    default = "Z0582280RDE8FEYKJV2"
}

variable "domain_name" {
    default = "srikanth.digital"
}