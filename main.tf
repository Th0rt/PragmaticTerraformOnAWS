variable "aws_access_key" {}
variable "aws_secret_access_key" {}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
  region     = "us-east-1"
}

resource "aws_instance" "test" {
  ami           = "ami-0f310fced6141e627"
  instance_type = "t3.micro"
}
