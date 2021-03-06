provider "aws" {
  region  = "us-east-1"
  version = "~> 2.70"
}

//HTTP Server -> SG
//SG -> 80 TCP, 22 TCP, CIDR ["0.0.0.0/0"]

resource "aws_security_group" "http_server_sg" {
  name   = "http_server_sg"
  vpc_id = "vpc-1d31de60"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "http_server_sg"
}
}
resource "aws_instance" "http_server" { 
    ami= "ami-08f3d892de259504d"
    key_name= "default-ec2"
    instance_type= "t2.micro"
    vpc_security_group_ids = ["sg-02752babffb2a42d7"]
    subnet_id= ""
}