locals {
  values_files = [
      for f in var.values_file : templatefile(f, var.values)
  ]
}