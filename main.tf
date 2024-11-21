provider "aws" {
  region = "us-east-1"
}

data "aws_region" "current" {}

output "aws_region" {
  value = data.aws_region.current.name
}
