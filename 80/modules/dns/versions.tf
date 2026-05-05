terraform {
  required_providers {
    hcloud = {
      source                = "hetznercloud/hcloud"
      version               = "~> 1.62"
      configuration_aliases = [hcloud.dns]
    }
  }
}
