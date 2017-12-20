# VPC Private Subnets
resource "aws_subnet" "private_subnet" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.cidr_block}"
  map_public_ip_on_launch = true
  availability_zone = "${var.region}a"
  tags {
    name = "${var.env}-${var.name}"
  }
}

# To private_subnet route table
resource "aws_route_table_association" "private_subnet_association" {
  route_table_id = "${var.private_route_table_id}"
  subnet_id = "${aws_subnet.private_subnet.id}"
}
