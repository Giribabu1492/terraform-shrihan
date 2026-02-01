terraform {

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"


    }
  }
  #   backend "s3" {
  #     bucket = "shrihan-state"
  #     key    = "vpc-test-tfstate"
  #     region = "us-east-1"
  #     dynamodb_table = "shrihan-statefile-locking"
        
  # }

}


provider "aws" {

  region = "us-east-1"
}