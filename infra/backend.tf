terraform {
  backend "s3" {
    bucket = "terraform-khusrav-new" # backend s3 bucket name
    key    = "jenkins-integrate/s3/server.tfstate"  # backend path and file name
    region = "us-east-1"
    dynamodb_table = "my-dynamo-lock"
  }
}