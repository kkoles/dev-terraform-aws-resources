terraform {
  backend "s3" {
    bucket         = "<AWS-S3-BUCKET-NAME>"
    key            = "mtc-terraform-aws.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "mtc-terraform-aws-tf-state-lock"
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
