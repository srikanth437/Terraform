resource "aws_instance" "example" {
  #for_each               = var.instance_type
  for_each = toset(var.instances)
  ami                    = var.ami_id
  instance_type          = var.domain_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name    = each.key
    Project = "roboshop"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow-all-terraform-change" # this is for AWS account
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all-terraform"
  }

  lifecycle {
    create_before_destroy = true
  }
}