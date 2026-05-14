terraform {
  required_providers {
    hcloud = {
      source                = "hetznercloud/hcloud"
      version               = "~> 1.63"
      configuration_aliases = [hcloud.dns]
    }
  }
}
