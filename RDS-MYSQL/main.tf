resource "aws_db_instance" "naveed-rds" {
  allocated_storage    = var.allocated_storage
  identifier           = var.identifier
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  db_subnet_group_name = aws_db_subnet_group.naveed-subnet.name
  skip_final_snapshot = true
}
resource "aws_db_subnet_group" "naveed-subnet" {
  name = "db-subnet-group"
  subnet_ids  = [
    var.subnet1,
    var.subnet2
  ]
}