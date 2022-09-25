resource "aws_vpc" "website" {
  
  cidr_block         = var.vpc_cidr
  enable_dns_support = "true"
  tags = {
    name = "website"
  }

}
