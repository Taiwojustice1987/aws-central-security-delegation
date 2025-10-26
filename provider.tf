terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.100"
    }
  }
}

provider "aws" {
  alias   = "central"
  region  = var.region
  profile = "CENTRAL_AWS_PROFILE"
}

provider "aws" {
  alias   = "member"
  region  = var.region
  profile = "MEMBER_ADMIN_USER"
}
