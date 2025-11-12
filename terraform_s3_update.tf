# Terraform configuration to update an S3 bucket

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-updated-example-bucket-2025"
  acl    = "private"

  tags = {
    Name        = "UpdatedExampleBucket"
    Environment = "Test"
  }
}
