variable "cars" {
  default = ["BMW","Lamborgini","Ferrari"]
}
output "cars_with_first_car" {
  value = var.cars[0]
}