terraform {
  required_version = ">= 1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }

  backend "s3" {
    bucket         = "tbirkenstock-helloworld-tfstate"
    key            = "state/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "tbirkenstock-helloworld_tf_lockid"
  }
}