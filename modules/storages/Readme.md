<!-- BEGIN_TF_DOCS -->
Create storage accounts

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.common](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Region | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Name prefix | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | Resource group name | `string` | n/a | yes |
| <a name="input_storages"></a> [storages](#input\_storages) | Storage definitions to be created. Example<pre>{        <br>      "diag" = {<br>        account_tier = "Standard"<br>        replication_type = "LRS"<br>        account_kind = "StorageV2"<br>      }<br>    }</pre> | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage"></a> [storage](#output\_storage) | n/a |
<!-- END_TF_DOCS -->