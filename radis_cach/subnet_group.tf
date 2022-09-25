resource "aws_elasticache_subnet_group" "group_subnet" {
  name       = "elasticachesubnet"
  subnet_ids = var.subnets
}