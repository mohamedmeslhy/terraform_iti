provider "aws" {

    region = "us-east-1"
  
}


resource "aws_instance" "ec2" {
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.private_1.id 

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "ec3" {
  ami           = "ami-0ed9277fb7eb570c9"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.private_3.id 

  tags = {
    Name = "HelloWorld222"
  }
}

resource "aws_db_subnet_group" "db" {
  name       = "main"
  subnet_ids = [aws_subnet.private_3.id , aws_subnet.private_4.id]

  tags = {
    Name = "My DB subnet group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_subnet_group_name     = "${aws_db_subnet_group.db.name}"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
