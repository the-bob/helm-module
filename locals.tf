locals {
  values_file = [
    for f in var.values_file : templatefile(f, var.values)
  ]
}