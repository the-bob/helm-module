variable "name" {
  description = "Name of the Chart"
  type        = string
}

variable "namespace" {
  description = "Namespace where the chart will be deployed"
  type        = string
  default     = "default"
}

variable "repository" {
  description = "Helm Repository"
  type        = string
}

variable "values_files" {
  description = "Helm Values File"
  type        = set(string)
  default     = []
}

variable "values" {
  description = "Override Values that will be added in the values file if the values_file is specified"
  type        = map(string)
  default     = {}
}

variable "chart_version" {
  description = "Version of the chart to deploy"
  type        = string
}

variable "chart_name" {
  description = "The Chart from the chart museum to be deployed"
  type        = string
}

variable "force_update" {
  description = "Flag if the chart should be force update"
  type        = bool
  default     = true
}

variable "wait" {
  description = "Flag if to wait until the deployment finishes"
  type        = bool
  default     = true
}

variable "recreate_pods" {
  description = "Should it recreate the pods"
  type        = bool
  default     = true
}

variable "set" {
  description = "Helm --set"
  type = list(object({
    name  = string
    value = string
  }))
  default = null
}

variable "set_sensitive" {
  description = "--set that won't be shown in the terraform plan"
  type = list(object({
    path  = string
    value = string
  }))
  default = null
}

variable "create_namespace" {
  description = "Flag if to create the specified namespace"
  type        = bool
  default     = false
}

variable "secret_files" {
  description = "Secrets file for deployment"
  type        = list(string)
  default     = []
}