variable "iam_user_name_prefix"{
    defult= "my_iam_user"
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 2.67"
}

# resource "aws_s3_bucket" "my_s3_bucket"{
#     bucket= "bucket-manish-091299"
#     versioning {
#         enabled = true
#     }
# }
resource "aws_iam_user" "my_iam_users" {
  count = 3
  name  = "${var.iam_user_name_prefix}_${count.index}"
}