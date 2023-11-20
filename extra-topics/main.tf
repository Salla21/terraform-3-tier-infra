resource "aws_instance" "test" {
  ami = "ami-0669b163befffbdfc"
  instance_type = "t2.micro"
  tags = {
    Name="eu-central-1-server"
  }
}


resource "aws_instance" "web" {
  ami = "ami-07355fe79b493752d"
  instance_type = "t2.micro"
  tags = {
    Name="eu-west-1-server"
  }
  provider = aws.west
}