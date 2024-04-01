output "dns_name" {
  value = aws_lb.test.dns_name

}
output "target_group" {
  value = aws_lb_target_group.test.id

}

