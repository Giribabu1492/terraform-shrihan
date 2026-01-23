resource "aws_instance" "this" {
  ami                    = local.ami_id
  instance_type          = local.instance_type
  vpc_security_group_ids = [aws_security_group.example.id]
  tags = {
    Name = local.name
  }
}


resource "aws_security_group" "example" {
  name = "giri-sg"
  #vpc_id = aws_vpc.example.id

  ingress {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }



  tags = {
    name = "allow-tag"

  }
}
