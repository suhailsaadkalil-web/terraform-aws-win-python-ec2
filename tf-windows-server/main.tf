terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # غيّر للمنطقة اللي تفضلها
}

module "win_python_ec2" {
  source  = "plus3it/win-python-ec2/aws"
  version = "1.0.2"  # آخر إصدار معروف
}
