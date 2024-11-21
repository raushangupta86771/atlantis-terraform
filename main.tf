provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "secondary"
  region = "us-west-2"
}

output "default_aws_region" {
  value = "us-east-1"
}

output "secondary_aws_region" {
  value = "us-west-2"
}

output "default_aws_provider" {
  value = "aws"
}

output "secondary_aws_provider" {
  value = "aws.secondary"
}

output "aws_region_count" {
  value = length([ "us-east-1", "us-west-2" ])
}

output "regions" {
  value = ["us-east-1", "us-west-2"]
}
