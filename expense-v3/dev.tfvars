env = "dev"
ami = "ami-03265a0778a880afb"
instance_type = "t3.micro"
sg_id = ["sg-07af6364e76485c77"]
zone_id = "Z09500041AC5RMFMHJ5ZR"
components={
  frontend={
    name="frontend"
    instance_arch="t3.micro"
  }
  backend={
    name="backend"
    instance_arch="t3.micro"
  }
  mysql= {
    name          = "mysql"
    instance_arch = "t3.micro"
  }
}