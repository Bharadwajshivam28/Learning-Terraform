terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

  backend "s3" {
    bucket         = "buckkkktest"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "db_table_for_test"
  }
}
