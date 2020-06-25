output "my_s3_bucket_versioning" {
    value = aws_s3_bucket.my_s3_bucket.versioning[0]
}



output "my_iam_user" {
    value = aws_iam_user.my_iam_user
}