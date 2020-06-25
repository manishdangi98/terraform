variable "names"{
    default= ["manish","guna","saniya"]
}
provider "aws" {
    region = "us-east-1"
    version = "~> 2.67"
}

resource "aws-iam_user" "my_iam_users"{
    count= length.var.names
}