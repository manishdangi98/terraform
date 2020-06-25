provider "aws" {
    region= "us-east-1"
    version = "~> 2.67"
}
#plan-execute
resource "aws_s3_bucket" "my_s3_bucket"{
    bucket= "bucket-manish-091299"
    versioning {
        enabled = true
    }
}
#state
# DESIRED KNOWN ACTUAL
output "my_s3_bucket_versioning" {
    value = aws_s3_bucket.my_s3_bucket.versioning[0]
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_updated"
}

output "my_iam_user" {
    value = aws_iam_user.my_iam_user
}