output "instance-profile" {
  description = "id of the instance profile"
  value       = module.instance-profile.instance_profile_id

}
output "launch_template_id" {
  description = "launch template id"
  value       = module.launch_template.launch_template
}
output "autoscaling_group_id" {
  description = "autoscaling group id"
  value       = module.asg.aws_autoscaling_group
}
output "dns_name_lb" {
  description = "prints the domain name of load balancer"
  value       = module.elb_asg.dns_name
}


