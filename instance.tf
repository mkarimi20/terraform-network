resource "aws_instance" "web" {
   ami = "${var.ami}"
   instance_type = "${var.instance_type}"
   count = "${var.count}"
   key_name = "${var.key_name}"
   subnet_id = "${aws_subnet.dev1.id}"
   associate_public_ip_address = "true"
   vpc_security_group_ids = "{aws_security_group.allow.ssh.id}"

   user_data = "${file("userdata.sh")}"
   
   tags {
      Name = "terraform-january-${var.Created_by}-${count.index +1}"
      Env = "${var.Env}"
      Dept = "${var.Dept}"
      Created_by = "${var.Create_by}"
   }
}

