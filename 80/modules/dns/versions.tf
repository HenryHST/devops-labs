terraform {
  required_providers {
    hcloud = {
      source                = "hetznercloud/hcloud"
      version               = "~> 1.69"
      configuration_aliases = [hcloud.dns]
    }
  }
}
