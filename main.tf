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
