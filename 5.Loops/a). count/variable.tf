variable "aws_instance" {
  type = list
  default = ["mangodb", "radis", "mysql", "rabbitmq", "cart", "payment", "user", "shipping", "catlouge", "frontend"]
}