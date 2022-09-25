#public route table 
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.website.id

  tags = {
    Name = "public_route"
  }
}
resource "aws_route" "public_route" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id=aws_internet_gateway.ngw.id
}
resource "aws_route_table_association" "public" {
  count=length(var.public_subnet)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}
#################################################
################################################

#private route table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.website.id

  tags = {
    Name = "private_route"
  }
}
resource "aws_route" "private_route" {
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = "0.0.0.0/0"
   instance_id= aws_instance.nat_instance.id
}
resource "aws_route_table_association" "private" {
  count=length(var.private_subnet)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id

}