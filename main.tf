resource "kubernetes_namespace" "deployments" {
  count = var.create_namespace && var.namespace != "default" ? 1 : 0
  metadata {
    name = var.namespace
  }
}

module "helm" {
  source  = "terraform-module/release/helm"
  version = "2.7.0"

  namespace  = var.namespace
  repository = var.repository

  values = var.values_file != null ? local.values_file : []
  app = {
    name          = var.name
    version       = var.chart_version
    chart         = var.chart_name
    force_update  = var.force_update
    wait          = var.wait
    recreate_pods = var.recreate_pods
    force_update  = var.force_update
    deploy        = 1
  }

  set           = var.set
  set_sensitive = var.set_sensitive
}