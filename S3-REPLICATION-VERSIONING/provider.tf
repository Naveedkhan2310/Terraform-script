terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.49.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
  alias = "replica"
}
provider "aws" {
    region = "ap-south-1"
    access_key = ""
    secret_key = ""
}