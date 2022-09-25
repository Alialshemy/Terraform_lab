variable "vpc_cidr" {
  type = string
}
variable "public_subnet" {
  type = list
}
variable "private_subnet" {
  type = list
}
variable "region" {
  type = string
}
variable "private_avaibility_zone" {
  type = list
  
}
variable "public_avaibility_zone" {
  type = list
  
}
