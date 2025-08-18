terraform {
  backend "s3" {
    bucket = "stoirageeee"
    key = "github/tf.state"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "tf-state-lock"
  }
}