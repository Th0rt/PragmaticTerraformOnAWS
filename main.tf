variable "aws_access_key" {}
variable "aws_secret_access_key" {}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
  region     = "us-east-1"
}

data aws_ssm_parameter amzn2_ami {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "test" {
  ami           = data.aws_ssm_parameter.amzn2_ami.value
  instance_type = "t3.micro"
}
