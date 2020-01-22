resource "aws_subnet" "dev1" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.1.0/24"
 
 tags {
      Name = "terraform-january-${var.Created_by}-${count.index +1}"
      Env = "${var.Env}"
      Dept = "${var.Dept}"
      Created_by = "${var.Created_by}"
   }
}

resource "aws_vpc" "dev2" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.2.0/24"
  tags {
      Name = "terraform-january-${var.Created_by}-${count.index +1}"
      Env = "${var.Env}"
      Dept = "${var.Dept}"
      Created_by = "${var.Created_by}"
   }
}
