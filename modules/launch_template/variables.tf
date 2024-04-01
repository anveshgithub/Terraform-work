#variable "instance_profile" {
#   type = string
#}
variable "web_sg_id" {
  description = "to define security-group"
  type        = string
}

variable "instance_type" {
  description = "defining instance type"
  type        = string
}

variable "ssh-key" {
  description = "defining pub ssh key in template"
  type        = string
}

variable "ami_id" {
  description = "defining the ami "
  type        = string
  default     = "ami-080e1f13689e07408"

}

