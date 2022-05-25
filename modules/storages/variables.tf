## Common variables
variable "resource_group" {
    description = "Resource group name"
    type = string
}

variable "location" {
    description = "Region"
    type = string
}

variable "prefix" {
    description = "Name prefix"
    type = string
}

variable "tags" {
   type = map
}

## Module variables
variable  "storages" {
   type = any
   description = <<EOT
Storage definitions to be created. Example
```
    {        
      "diag" = {
        account_tier = "Standard"
        replication_type = "LRS"
        account_kind = "StorageV2"
      }
    }
```
EOT
}   

