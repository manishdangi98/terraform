resource "aws_s3_bucket" "my_s3_bucket"{
    bucket= "bucket-manish-091299"
    versioning {
        enabled = true
    }
}
resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_updated"
}