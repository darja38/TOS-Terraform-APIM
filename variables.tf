variable "resourceGroupName" {
  description = "The name of the resource group"
  type = string
}

variable "resourceGroupLocation" {
  description = "Location of the resource group"
}

variable "name" {
  description = "The name of the API Management service."
  type        = string
  default     = "testapim1"
}

variable "location" {
  description = "The location of the API Management service."
  type        = string
  default     = "East US"
}

variable "publisher_name" {
  description = "The name of the publisher."
  type        = string
  default     = "Diiage"
}

variable "publisher_email" {
  description = "The email of the publisher."
  type        = string
  default     = "mail@test.com"
}

variable "sku_name" {
  description = "The name of the SKU used for the API Management service."
  type        = string
  default     = "Developer_1"
}
