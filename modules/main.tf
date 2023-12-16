module "demo" {
  for_each = var.instances
  source = "./demo"

}
variable "instances" {
  default = {
    frontend={}
    backend={}
    mysql={}
  }
}