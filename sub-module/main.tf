variable "my_map" { type = "map" }

output "my_val" {
  value = "${lookup(var.my_map,"key2","default")}"
}
