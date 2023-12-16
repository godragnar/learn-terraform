resource "aws_instance" "frontend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07af6364e76485c77"]

  tags = {
    Name = "Frontend"
  }
}

resource "aws_instance" "backend" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07af6364e76485c77"]

  tags = {
    Name = "Backend"
  }
}

resource "aws_instance" "mysql" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07af6364e76485c77"]

  tags = {
    Name = "MySQL"
  }
}