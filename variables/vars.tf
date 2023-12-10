variable "cars" {
  default = ["BMW","Lamborgini","Ferrari"]
}
output "cars_with_first_car" {
  value = var.cars[0]
}

variable "cars_with_prices" {
  default = {
    BMW=10000000
    Lamborgini=20000000
    Ferrari=3000000
  }
}
output "cars_ferrari_price" {
  value = var.cars_with_prices["Ferrari"]
}