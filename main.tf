provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-034a8236c75419857"
  instance_type = "t2.micro"

  tags = {
    Name = "MyVariableInstance"
  }
}