variable "my_map" {
  default = {
    "key1" = "val1",
    "key2" = "val2",
  }
}

module "sub" {
  source = "./sub-module"

  my_map = "${var.my_map}"
}

output "my_val" {
  value = "${module.sub.my_val}"
}
