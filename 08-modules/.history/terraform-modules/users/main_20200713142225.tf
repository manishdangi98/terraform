variable "environment" {
    default = "deafult"
}

provider "aws" {
    region = "us-east-1"
    version = "~> 2.70"
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_${var.environment}"
}
locals {
    iam_user_extension = "my_iam_user_abc"
}