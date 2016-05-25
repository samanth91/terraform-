provider "aws" {
  access_key = "xxxxxxxxxxxxxxxxxxxxUOFBQ"
  secret_key = "xxxxxxxxxxxxxxxxP8QqTK6l1abirlXuVdtU"
  region     = "us-east-1"
}

resource "aws_instance" "terraform_test" {
  ami           = "ami-f5f41398"
  instance_type = "t2.micro"
 }
resource "aws_security_group" "terraform_test"{
  ingress {
    from_port = 0
    to_port   = 22
    protocol = "tcp"
    cidr_blocks = ["184.72.69.180/32"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }



}

