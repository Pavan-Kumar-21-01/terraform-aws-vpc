terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "tf-state-lock-bkt-tf"
    key    = "module-demo/VPC/terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = true
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}



