resource "aws_internet_gateway" "ngw" {
  vpc_id = aws_vpc.website.id

  tags = {
    Name = "public"
  }
}