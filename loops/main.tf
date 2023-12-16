
variable "instances" {
  default = ["frontend","backend","mysql"] #Count
}

resource "null_resource" "sample" {
  count = length(var.instances)
}

#for-each-if the i/p is a map of values

variable "instances1"{
  default = {
    frontend={
      name="frontend"
      instance_arch="t3.micro"
    }
    backend={
      name="backend"
      instance_arch="t3.micro"
    }
    mysql={
      name="mysql"
      instance_arch="t3.micro"
    }
  }
}