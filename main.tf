provider "aws" {
  region = "ap-south-1"
}

data "aws_region" "current" {}

output "aws_region" {
  value = data.aws_region.current.name
}
