# variables.tf

variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "SwitzerlandNorth"
}

variable "storage_account_name" {
  description = "Name of the Storage Account"
  type        = string
}

variable "container_name" {
  description = "Name of the Blob Container"
  type        = string
}