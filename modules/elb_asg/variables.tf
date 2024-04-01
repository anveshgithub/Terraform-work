variable "security_groups" {
  description = "refers the sg for loadbalancer"
  type        = list(string)

}
variable "subnets_ids" {
  description = "this is to populate alb on specific networks"
  type        = list(string)
}
variable "vpc_id_tg" {
  description = "this is to configure vpc id with tg"
  type        = string
}


variable "aws_autoscaling_group" {
 type = string
}
