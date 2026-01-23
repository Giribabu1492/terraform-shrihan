variable "ami_id" {
  type = string
  default =  "ami-0220d79f3f480ecf5"
  description = "ami id of server"
}

variable "instance_type" {

    type = string
    default = "t3.micro"
  
}

variable "ec2_tags" {
  
  type = map
   default = {
        Name = "terraform-ec2-variable-demo"
        Project ="variable-demo"
        Environment="dev"
   } 
}

variable "from_port" {

    default = 22

}

variable "to_port" {
  default = 22
}


variable "cidr_blocks" {
  type = list
    default = ["0.0.0.0/0"]

}

variable "sg-tags" {
  
  default = {

    name= "Variable-SG"
  }
}