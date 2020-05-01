terraform {
  required_version = "0.11.14"
  
  backend "s3" {
    bucket = "state-bucket-silvia"
    key    = "path/to/my/key"
    //dynamodb_table = "state_bucket"
    region = "us-east-1"
  }
}
