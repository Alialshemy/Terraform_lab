#resource "aws_eip" "elastic_ip" {

#}
#resource "aws_nat_gateway" "nat_gateway"{
 # allocation_id = aws_eip.elastic_ip.id
 # subnet_id     = aws_subnet.public[0].id

 # tags = {
 #   Name = "nat"
 # }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
 # depends_on = [aws_internet_gateway.ngw]
#}
#nat instance 
resource "aws_instance" "nat_instance" {
  ami = "ami-003acd4f8da7e06f9"
  instance_type ="t2.micro"
  subnet_id =aws_subnet.public[0].id
  #associate_public_ip_address 
  key_name = "ali"
  vpc_security_group_ids = [
        aws_security_group.private.id
  ]
  
  tags = {
    Name ="nat_instance"
    Environment = "network"
    OS = "aws"
    Managed = "admin"
  }
}