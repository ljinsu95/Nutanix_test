variable "prefix" {
  type = string
  default = "jinsu"
}

variable "nutanix_username" {
  type = string
}

variable "nutanix_password" {
  type = string
}

variable "nutanix_endpoint" {
  type = string
}

variable "nutanix_port" {
  type = string
  default = "9440"
}

variable "nutanix_storage_uuid" {
  type = string
}

variable "nutanix_nic_subnet_uuid" {
  type = string
}