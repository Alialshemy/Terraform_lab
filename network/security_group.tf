 resource "aws_security_group" "public" {
  name        = "public"
  description = "Allow port  inbound traffic"
  vpc_id      = aws_vpc.website.id

  ingress  {
    
    description      = "Allow ssh conection VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "public"
  }
} 
resource "aws_security_group" "private" {
  name        = "private"
  description = "Allow port  inbound traffic"
  vpc_id      = aws_vpc.website.id

  ingress  {
    
    description      = "Allow ssh conection VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.website.cidr_block]
    
  }
 ingress {
    
    description      = "Allow port 3000 "
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.website.cidr_block]
    
  }

  

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "private"
  }
} 
resource "aws_security_group" "mysql_seg" {
  description = "RDS (terraform-managed)"
  vpc_id      = aws_vpc.website.id
  # Only MySQL in
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.website.cidr_block]
  }

  # Allow all outbound traffic.
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

