resource "aws_instance" "web" {
    count = "10"
  ami           = "ami-04bf6dcdc9ab498ca"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
