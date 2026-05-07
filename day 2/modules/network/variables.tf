variable "virtual_network" {
  type = string
}

variable "subnet" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_prefixes" {
  type = list(string)
}

variable "default_tags" {
  type = map(string)
}
