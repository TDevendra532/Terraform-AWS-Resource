resource "aws_s3_bucket" "my_bucket" {
  bucket = "devya-fiverr-showcase-${random_id.rand.hex}"
  force_destroy = true
  tags = {
    Name = "Devya-S3"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "random_id" "rand" {
  byte_length = 4
}

