provider "aws" {
    region= "us-east-1"
    version = "~> 2.67"
}

# resource "aws_s3_bucket" "my_s3_bucket"{
#     bucket= "bucket-manish-091299"
#     versioning {
#         enabled = true
#     }
# }
resource "aws_iam_user" "my_iam_users" {
    count=3
    name = "my_iam_user_${count.index}"
}