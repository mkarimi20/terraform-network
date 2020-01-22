resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16"
  tags {
     Name = "terraform-january-${var.Created_by}-${count.index +1}"
     Env  = "${var.Env}"
     Dept = "${var.Dept}"
     Created_by = "${var.Created_by}"
  }
}