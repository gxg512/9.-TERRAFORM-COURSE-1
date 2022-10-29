terraform {
  backend "s3" {
    bucket = "mybucket-5151351351514"
    key    = "myid"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "12.0.0.0/16"
}
