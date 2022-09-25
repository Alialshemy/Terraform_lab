output "vpc_id" {
  value = aws_vpc.website
}
output "security_group" {
  value=aws_security_group.public.id
}
output "public_subnets" {
  value=aws_subnet.public[*].id
}
output "private_subnets" {
  value=aws_subnet.private[*].id
  
}
output "private_security" {
  value = aws_security_group.private.id
}
output "public_seg" {
  value=aws_security_group.public
}
output "private_seg" {
   value=aws_security_group.private
}
output "db_sql_seg" {
  value= aws_security_group.mysql_seg.id
}