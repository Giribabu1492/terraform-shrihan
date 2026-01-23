variable "ami_id" {
  type = string
  default =  "ami-0220d79f3f480ecf5"
  description = "ami id of server"
}

variable "instances" {

  default = ["mysql", "backend","frontend"]
  
}
variable "environment" {
  
  default = "dev"
}

variable "zone_id" {
  
  default = "Z069531237ME55NONB7XX"
}


variable "domain_name" {
  
  default = "shrihan.fun"
}


variable "instance_type" {

    type = string
    default = "t3.micro"

  
}

/* variable "ec2_tags" {
  
  type = map
   default = {
        Name = "terraform-ec2-variable-demo"
        Project ="variable-demo"
        Environment="dev"
   } 
} */

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



variable "common_tags" {
  
  default = {
        Project ="expense"
        Environment="dev"
   }
}