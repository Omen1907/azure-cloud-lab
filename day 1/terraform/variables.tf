variable "location" {
  description = "Azure region for all resources"

  type    = string
  default = "eastus"
}

variable "default_tags" {
  type = map(string)
  default = {
    "Environment" = "dev"
    "Source"      = "Terraform"
    "Owner"       = "Mike"
  }
}

variable "project_name" {
  description = "Base name used for all resources"
  type        = string
  default     = "az-atmpt"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subnet_1_name" {
  description = "Name of the subnet"
  type        = string
  default     = "az-atmpt-subnet-1"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "adminuser"
}

variable "ssh_public_key" {
  description = "SSH public key for VM access"
  type        = string
  sensitive   = true
}
