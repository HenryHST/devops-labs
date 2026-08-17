terraform {
  required_providers {
    hcloud = {
      source                = "hetznercloud/hcloud"
      version               = "~> 1.68"
      configuration_aliases = [hcloud.dns]
    }
  }
}
