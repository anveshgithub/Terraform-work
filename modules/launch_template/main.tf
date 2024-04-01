resource "aws_launch_template" "nginx-docker_template" {

  iam_instance_profile {
    arn = var.instance_profile
  }

  image_id = var.ami_id


  instance_type = var.instance_type

  key_name = var.ssh-key

  user_data = filebase64("${path.module}/conf.sh")

  vpc_security_group_ids = [var.web_sg_id]

  tags = {
    Name        = "nginx-docker"
    description = "this is configuring docker amd nginx"
  }
}


