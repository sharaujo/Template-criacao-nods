terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc3"
    }
  }
}

  provider "proxmox" {
  pm_api_url            = "https://${var.pm_host}:8006/api2/json"
  pm_api_token_id       = var.pm_api_token_id
  pm_api_token_secret   = var.pm_api_token_secret
}
