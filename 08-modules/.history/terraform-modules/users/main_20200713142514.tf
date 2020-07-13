variable "environment" {
    default = "deafult"
}

provider "aws" {
    region = "us-east-1"
    version = "~> 2.70"
}

resource "aws_iam_user" "my_iam_user" {
    name = "${local.iam_user_extension}_${var.environment}"
}
locals {
    iam_user_extension = "my_iam_user_abc"
}