variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "tf-storage-rg"
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Name of the Storage Account"
  type        = string
}

variable "account_tier" {
  description = "Storage Account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage Account replication type"
  type        = string
  default     = "LRS"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}
