variable application_name {
    default = "07-backend-state"
}

variable project_name {
    default = "users"
}

variable environment {
    default = "dev"
}


terraform {
    backend "s3" {
        bucket = "dev-application-backend-state-terraform-abc"
        key = "${var.application_name}-${var.project_name}-${var.environment}"
        region = "us-east-1"
        dyanmodb_table = "dev_application_locks"
        encrypt = true
    }
}

provider "aws" {
    region = "us-east-1"
    version = "~> 2.70"
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc"
}