resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-jenkins"
  force_destroy = true # force delete all objeckts so the bucket can be destroyed without error
  tags = {
    Name        = "My bucket-jenkins"
    Environment = "Dev"
  }
}
