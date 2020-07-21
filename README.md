# Webapp Container

Terraform module to create azure webapp container.


# Variables

```
variable "rg_name" {
  description = "Resource Group Name"
  type        = string
  default     = ""
}

variable "rg_location" {
  description = "Resource Group Location"
  type        = string
  default     = "northeurope"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type    = map(string)
  default = {
    "Environment" = "Development"
    "BU" = "Information Technology"
  }
}


variable "appservice_plan_name" {
  description = "App service plan name"
  type        = string
  default     = ""
}

variable "plan_settings" {
  type        = map(string)
  description = "Definition of the dedicated plan to use"

  default = {
    kind     = "Linux" # Linux or Windows
    size     = "B1"
    tier     = "Basic"
  }
}

variable "app_name" {
  description = "Web App name"
  type        = string
  default     = ""
}

variable "container_type" {
  description = "Type of container. The options are: `docker`, `compose` or `kube`."
  type        = string
  default     = "docker"
}

variable "container_image" {
  description = "Container image name. Example: diquzart/flaskapp"
  type        = string
  default     = "diquzart/flaskapp"
}

variable "container_image_tag" {
  description = "Container image tag"
  type        = string
  default     = "development-f204e17"
}

variable "container_image_registry" {
  description = "Container image registry"
  type        = string
  default     = "https://index.docker.io"
}
```
