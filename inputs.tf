variable "region" {
  type        = string
  description = "this is the network region"
  default     = "us-wwest-2"
}
variable "cidr-vpc" {
  type        = string
  description = "cidr of the vpc "
  default     = "10.10.0.0/16"

}
variable "vpc-name" {
  type        = string
  description = "Name of the vpc "

}
variable "private_subnets" {
  type        = list(string)
  description = "Subnets of the vpc "

}
variable "public_subnets" {
  type        = list(string)
  description = "public subnets of the vpc"

}