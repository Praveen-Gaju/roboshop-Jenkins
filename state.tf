terraform {
  backend "s3" {
    bucket = "devopspract"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}