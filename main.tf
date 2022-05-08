
module "helm" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = var.namespace
  repository = var.repository

  values = var.values_files != null ? concat(local.values_file, var.secret_files) : []
  app = {
    name             = var.name
    version          = var.chart_version
    chart            = var.chart_name
    force_update     = var.force_update
    wait             = var.wait
    recreate_pods    = var.recreate_pods
    force_update     = var.force_update
    deploy           = 1
    create_namespace = var.create_namespace
  }

  set           = var.set
  set_sensitive = var.set_sensitive
}