terraform {
  backend "s3" {
    bucket = "terraform-iaac-2020-state"
    key    = "path/to/my/key"
    region = "us-east-1"
    #dynamodb_table = "terraform-iaac-2020"
  }
}