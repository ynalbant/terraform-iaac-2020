provider "aws" {
  region = "us-west-2"
}


#gets ubuntu ami 
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
#gets centos ami 

provider "aws" {
  region = "us-west-2"
}
data "aws_ami" "centos" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }
}
  output "AMI_ID" {
  value = "${data.aws_ami.centos.id}"
}
resource "aws_instance" "web" {
        ami = "${data.aws_ami.ubuntu.id}"
        instance_type = "t2.micro"
}



