terraform {
  backend "s3" {
    bucket = "santosh-test-tf"
    key    = "new.tfstate"
    region = "us-east-1"
    dynamodb_table = "santosh-demo-b5"
  }
}