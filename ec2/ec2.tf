resource "aws_instance" "this" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.example.id]
  tags = {
    Name = "Terraform"
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
