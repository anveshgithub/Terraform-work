
variable "instance_profile_name" {
  type    = string
  default = "nginx-docker"
}

variable "iam_policy_name" {
  type    = string
  default = "s3-policy"
}

variable "role_name" {
  type    = string
  default = "ec2-role"
}
