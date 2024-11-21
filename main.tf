provider "aws" {
  region = "*********"
}

data "aws_region" "current" {}

output "aws_region" {
  value = data.aws_region.current.name
}
