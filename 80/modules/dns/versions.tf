terraform {
  required_providers {
    hcloud = {
      source                = "hetznercloud/hcloud"
      version               = "~> 1.66"
      configuration_aliases = [hcloud.dns]
    }
  }
}
