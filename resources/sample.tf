resource "aws_instance" "sample" {
  ami_id="ami-07a6cb7a78915f1a0"
  instance_type = "t3.micro"

  tags = {
    Name ="World"
  }

}