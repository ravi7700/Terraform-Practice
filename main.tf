# 1. Define the Provider
provider "aws" {
  region = "ap-south-1"
}

# 2. Define the EC2 Instance
resource "aws_instance" "my_local_instance" {
  ami           = "ami-034a8236c75419857" # Amazon Linux 2 in ap-south-1
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Local-Demo"
  }
}