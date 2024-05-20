terraform {
  required_providers {
    nutanix = {
      source  = "nutanix/nutanix"
      version = ">=1.9.5"
    }
  }
}

### https://registry.terraform.io/providers/nutanix/nutanix/latest/docs
provider "nutanix" {
  username     = var.nutanix_username
  password     = var.nutanix_password
  endpoint     = var.nutanix_endpoint
  port         = var.nutanix_port
  insecure     = true
  wait_timeout = 1
}
