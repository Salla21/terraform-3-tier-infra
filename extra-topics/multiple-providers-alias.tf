provider "aws" {
  region = "eu-central-1"
  profile = "default"
}

provider "aws" {
  region = "eu-west-1"
  alias = "west"
}