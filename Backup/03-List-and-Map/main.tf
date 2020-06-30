variable "names"{
    default= ["ritika","manish","guna","saniya","aitik"]
}
provider "aws" {
    region = "us-east-1"
    version = "~> 2.67"
}

resource "aws_iam_user" "my_iam_users"{
    count= length(var.names)
    name = var.names[count.index]
}