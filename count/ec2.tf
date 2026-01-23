resource "aws_instance" "this" {
    count = 3
  ami                    = var.ami_id
  instance_type          = var.environment=="prod"? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.example.id]
  # tags = {
  #   Name = var.instances[count.index]

  # }

  tags = merge(var.common_tags, { Name = var.instances[count.index] })
}


resource "aws_security_group" "example" {
  name = "Expance-SG"
  #vpc_id = aws_vpc.example.id

  ingress {

    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags =var.sg-tags

  }

