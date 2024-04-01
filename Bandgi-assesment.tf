provider "aws" {
   region = "us-east-1"
}
module "instance-profile" {
  source = "./modules/iam_profile"
}
module "launch_template" {
  source           = "./modules/launch_template"
  instance_profile = module.instance-profile.instance_profile_id
  instance_type    = "t2.micro"
  ssh-key          = "new-key"
  web_sg_id        = "sg-0880adc74ef2995cc"

}

module "asg" {
  source              = "./modules/asg"
  aws_launch_template = module.launch_template.launch_template
  aws-subnets         = ["subnet-0aaff1b62c5b33b92", "subnet-0958e3d07e1459613"]
}

module "elb_asg" {
  source                = "./modules/elb_asg"
  aws_autoscaling_group = module.asg.aws_autoscaling_group
  security_groups       = ["sg-0880adc74ef2995cc"]
  subnets_ids           = ["subnet-0aaff1b62c5b33b92", "subnet-0958e3d07e1459613"]
  vpc_id_tg             = "vpc-005ea843fd1d3a391"
}
