data "aws_ami" "joindevops" {
  most_recent = true
 owners = ["973714476881"]
  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  # Amazon
}
output "ami_id" {
  

  value = data.aws_ami.joindevops.id
}



data "aws_vpc" "default-vpc" {
  
    default =  true 

}

output "vpc-full-deatils" {

    value = data.aws_vpc.default-vpc
  
}
output "vpc-_id" {
  
  value = data.aws_vpc.default-vpc.id
}