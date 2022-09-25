resource "aws_db_subnet_group" "RDS_sub_grp" {   
  name       = "main"
  subnet_ids = var.subnet_id
  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "mysql" {
  allocated_storage    = 10
  db_name              = "mysqldb"
  engine               = "mysql"
  engine_version        = "5.7"
  instance_class       = "db.t3.micro"
  username             = "ali"
  password             = "aliadmin12345"
  parameter_group_name = "default.mysql5.7"
  #availability_zone=var.zone
  vpc_security_group_ids=["${var.security_group}"]
  db_subnet_group_name    = aws_db_subnet_group.RDS_sub_grp.id
  skip_final_snapshot  = true
}