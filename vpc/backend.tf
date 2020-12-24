terraform {
backend "s3" {
bucket = "terraform-iaac-2020-state"
key = "tower/us-east-1/tools/ireland/tower.tfstate"
region = "us-east-1"
  }
}
