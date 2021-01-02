resource  "null_resource" "yunus"{
    provisioner "remote-exec" {
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "${file("~/.ssh/id_rsa")}"
    host     = "${aws_instance.web.public_ip}"
          }
        inline = [
          "sudo apt-get install telnet -y ",
          "mkdir /tmp/ubuntu",
          "w",
          "free -m",
          "sleep 5"
          ]
    
    }

}