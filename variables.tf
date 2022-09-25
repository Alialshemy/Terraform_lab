variable "vpc_cidr" {
  type = string
}
variable "public_subnet" {
  type = list(any)
}
variable "private_subnet" {
  type = list(any)
}
variable "region" {
  type = string
}
variable "private_avaibility_zone" {
  type = list(any)

}
variable "public_avaibility_zone" {
  type = list(any)

}
