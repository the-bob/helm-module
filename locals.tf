locals {
  values_file = [
    for f in var.values_files : templatefile(f, var.values)
  ]
}