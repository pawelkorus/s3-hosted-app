resource "aws_s3_bucket" "app" {
  bucket = var.bucket-name
}

resource "aws_s3_bucket_acl" "app" {
  bucket = aws_s3_bucket.app.id
  acl = "private"
}

resource "aws_s3_bucket_public_access_block" "app-public-access" {
  bucket = aws_s3_bucket.app.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "app" {
  bucket = aws_s3_bucket.app.id
  versioning_configuration {
    status = "Disabled"
  }
}
