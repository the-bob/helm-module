# helm-module
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.4.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.11.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_helm"></a> [helm](#module\_helm) | terraform-module/release/helm | 2.7.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_chart_name"></a> [chart\_name](#input\_chart\_name) | The Chart from the chart museum to be deployed | `string` | n/a | yes |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of the chart to deploy | `string` | n/a | yes |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Flag if to create the specified namespace | `bool` | `false` | no |
| <a name="input_force_update"></a> [force\_update](#input\_force\_update) | Flag if the chart should be force update | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Chart | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace where the chart will be deployed | `string` | `"default"` | no |
| <a name="input_recreate_pods"></a> [recreate\_pods](#input\_recreate\_pods) | Should it recreate the pods | `bool` | `true` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Helm Repository | `string` | n/a | yes |
| <a name="input_secret_files"></a> [secret\_files](#input\_secret\_files) | Secrets file for deployment | `list(string)` | `[]` | no |
| <a name="input_set"></a> [set](#input\_set) | Helm --set | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `null` | no |
| <a name="input_set_sensitive"></a> [set\_sensitive](#input\_set\_sensitive) | --set that won't be shown in the terraform plan | <pre>list(object({<br>    path  = string<br>    value = string<br>  }))</pre> | `null` | no |
| <a name="input_values"></a> [values](#input\_values) | Override Values that will be added in the values file if the values\_file is specified | `map(string)` | `{}` | no |
| <a name="input_values_files"></a> [values\_files](#input\_values\_files) | Helm Values File | `set(string)` | `[]` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Flag if to wait until the deployment finishes | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->