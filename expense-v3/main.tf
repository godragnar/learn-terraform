resource "aws_instance" "instances" {
  for_each = var.components
  ami = var.ami
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.sg_id

  tags = {
    Name = "${each.value["name"]}-${var.env}"
  }
}
resource "aws_route53_record" "frontend" {
  for_each = var.components
  name     = "${each.value["name"]}${var.env}"
  type     = "A"
  zone_id  = var.zone_id
  ttl      = 30
   records = [aws_instance.instances[each.value["name"]].private_ip]
}







