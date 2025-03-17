terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.90.1"
    }
  }
}
#Configure the AWS Provider
provider "aws" {
  # shared_config_files      = ["~/.aws/config"]
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "terraform-sa"
}
