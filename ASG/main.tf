resource "aws_launch_configuration" "example-LC" {
  image_id                    = var.ubuntu-ami
  instance_type          = var.instance-type
  key_name               = var.pem-key
  security_groups = var.vpc_security_group_ids

  lifecycle {
    create_before_destroy = true
  }

  tags = var.tags

  associate_public_ip_address = var.associate_public_ip_address

}

resource "aws_autoscaling_group" "example-ASG" {
  name                 = "example-ASG"
  max_size             = 3
  min_size             = 1
  launch_configuration = var.example-LC.name
  vpc_zone_identifier  = ["${aws_subnet.example1.id}", "${aws_subnet.example2.id}"]
