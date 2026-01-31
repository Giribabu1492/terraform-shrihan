variable "cidr_block" {
  
}

variable "enable_dns_hostnames" {
  default = true
}

variable "project_name" {
  
}

variable "environment" {
  
} 

variable "common_tags" {
  
  type = map
 
}

variable "igw_tags" {
  default = {}
}

variable "vpc_tags" {
  default = {}
}

variable "public_subnet_cidr" {
  type = list

  validation {
    condition = length(var.public_subnet_cidr) ==2
    error_message = "please provide two valid public subnet cidr"
  }

}

variable "public_subnet_tags" {
  default = {}
}


variable "private_subnet_cidr" {
  type = list

  validation {
    condition = length(var.private_subnet_cidr) ==2
    error_message = "please provide two valid private subnet cidr"
  }

}

variable "private_subnet_tags" {
  default = {}
}




variable "database_subnet_cidr" {
  type = list

  validation {
    condition = length(var.database_subnet_cidr) ==2
    error_message = "please provide two valid database subnet cidr"
  }

}

variable "database_subnet_tags" {
  default = {}
}


variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

