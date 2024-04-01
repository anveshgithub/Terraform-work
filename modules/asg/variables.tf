
variable "name_prefix" {
  description = "name of the resource defined"
  type        = string
  default     = "asg-nginx"
}
variable "min_size" {
  description = "size is configured"
  type        = number
  default     = 1
}
variable "max_size" {
  description = "max size is configured"
  type        = number
  default     = 2
}
variable "desired_capacity" {
  description = "configured desired capacity"
  type        = number
  default     = 1
}

variable "aws-subnets" {
  description = "configuring the subnets"
  type        = list(string)
}
variable "aws_launch_template" {
  type = string
}
