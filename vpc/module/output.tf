output "VPC_ID" {
    value = "${aws_vpc.dev.id}"
}

output "subnet1" {
    value = "${aws_subnet.dev1.id}"
}

output "subnet2" {
    value = "${aws_subnet.dev2.id}"
}
output "subnet3" {
    value = "${aws_subnet.dev3.id}"
}
output "private_subnet1" {
    value = "${aws_subnet.dev_private1.id}"
}
output "private_subnet2" {
    value = "${aws_subnet.dev_private2.id}"
}
output "private_subnet3" {
    value = "${aws_subnet.dev_private3.id}"
}

output "IGW" {
    value = "${aws_internet_gateway.dev.id}"
}