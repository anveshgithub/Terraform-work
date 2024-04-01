resource "aws_autoscaling_group" "asg" {
  name_prefix         = var.name_prefix
  desired_capacity    = var.desired_capacity
  max_size            = var.max_size
  min_size            = var.min_size
  vpc_zone_identifier = var.aws-subnets

  launch_template {
    id      = var.aws_launch_template
    version = "$Latest"
  }
}
