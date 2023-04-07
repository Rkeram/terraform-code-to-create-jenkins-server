terraform {
  backend "s3" {
    bucket         = "rks1932"
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
  }
}
