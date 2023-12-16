env = "dev"
ami = "ami-03265a0778a880afb"
sg_id = ["sg-07af6364e76485c77"]
zone_id = "Z09500041AC5RMFMHJ5ZR"
components={
  frontend={
    name="frontend"
    instance_type="t3.micro"
  }
  backend={
    name="backend"
    instance_type="t3.micro"
  }
  mysql= {
    name          = "mysql"
    instance_type = "t3.micro"
  }
}