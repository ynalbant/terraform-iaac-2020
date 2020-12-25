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

output "ubuntu_ami_id" {
  value = "data.aws.ami_ubuntu.id"

}

resource "aws_instance" "web1" {
ami = "${data.aws_ami.ubuntu.id}"
instance_type = "t3.micro"
tags = {
Name = "HelloWorld"
}
}




#gets centos ami 

data "aws_ami" "centos" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7 x86_64 HVM EBS *"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  

  owners = ["679593333241"] # Canonical
}


output "centos_ami_id" {
  value = "data.aws.ami_centos.id"
}

resource "aws_instance" "web2" {
ami = "${data.aws_ami.centos.id}"
instance_type = "t3.micro"
tags = {
Name = "HelloWorld"
}
}
