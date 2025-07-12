variable "bucket_name" {}

resource "aws_s3_bucket" "logs" {
  bucket = var.bucket_name
}

output "bucket_name" {
  value = aws_s3_bucket.logs.id
}