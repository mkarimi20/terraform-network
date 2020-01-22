resource "aws_internet_gateway" "igw1" {
  vpc_id = "${aws_vpc.dev.id}"
 tags {
      Name = "terraform-january-${var.Created_by}-${count.index +1}"
      Env = "${var.Env}"
      Dept = "${var.Dept}"
      Created_by = "${var.Created_by}"
   }
}