output "vpcid" {
  value       = module.vpc.vpc_id
  description = "this will show the vpcid of the ntier network"

}
output "privatesubnet_count" {
  value = length(var.private_subnets)
}
output "publicsubnet_count" {
  value = length(var.public_subnets)

}
output "ec2instance-id" {
  value = aws_instance.web-instance.id

}
