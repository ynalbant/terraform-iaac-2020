terraform {
  backend "s3" {
    bucket = "terraform-iaac-2020-state"
    key    = "path/to/my/eu-west-1"

    region = "us-east-2"
    #dynamodb_table = "terraform-iaac-2020"
  }
}