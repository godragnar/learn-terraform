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

#Creating DNS Records
 resource "aws_route53_record" "frontend" {
   name    = "frontend-dev"
   type    = "A"
   zone_id = "Z09500041AC5RMFMHJ5ZR"
   ttl=30
   records = [aws_instance.frontend.private_ip]
 }

resource "aws_route53_record" "backend" {
  name    = "backend-dev"
  type    = "A"
  zone_id = "Z09500041AC5RMFMHJ5ZR"
  ttl=30
  records = [aws_instance.backend.private_ip]
}

resource "aws_route53_record" "mysql" {
  name    = "mysql-dev"
  type    = "A"
  zone_id = "Z09500041AC5RMFMHJ5ZR"
  ttl=30
  records = [aws_instance.mysql.private_ip]
}