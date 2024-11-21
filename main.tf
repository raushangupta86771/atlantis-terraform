provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "secondary"
  region = "us-west-2"
}

data "aws_region" "current" {}

output "default_aws_region" {
  value = data.aws_region.current.name
}

data "aws_region" "secondary_current" {
  provider = aws.secondary
}

output "secondary_aws_region" {
  value = data.aws_region.secondary_current.name
}
