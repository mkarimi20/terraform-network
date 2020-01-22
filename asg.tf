module "asg" {
  source = "terraform-aws-modules/autoscaling/aws"

  name = "${var.Appname}"

  # Launch configuration
  lc_name = "example-lc"
  image_id        = "${var.ami}"
  instance_type   = "${var.instance_type}"
  security_groups = ["${aws_security_group.allow_ssh.id}"]

  # Auto scaling group
  asg_name                  = "example-asg"
  vpc_zone_identifier       = ["${aws_subnet.dev1.id}"]
  health_check_type         = "EC2"
  min_size                  = "${var.min_size}"
  max_size                  = "${var.max_size}"
  desired_capacity          = "${var.desired_capacity}"
  wait_for_capacity_timeout = 0
  associate_public_ip_address	= "true"
  user_data = "${file("userdata.sh")}"
}