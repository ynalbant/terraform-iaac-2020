resource "aws_route_table_association" "dev1" {
  subnet_id = "${aws_subnet.dev1.id}"
  route_table_id = "${aws_route_table.dev.id}"
}




resource "aws_route_table_association" "dev2" {
  subnet_id = "${aws_subnet.dev1.id}"
  route_table_id = "${aws_route_table.dev.id}"
}


resource "aws_route_table_association" "dev3" {
  subnet_id = "${aws_subnet.dev1.id}"
  route_table_id = "${aws_route_table.dev.id}"
}

