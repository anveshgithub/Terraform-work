output "iam_policy_id" {
 value = aws_iam_policy.s3_policy.id
}
output "iam_role_id" {
  value = aws_iam_role.ec2_role.id
}
output "instance_profile_id" {
    value = aws_iam_instance_profile.ec2_instance_profile.arn
  
}
