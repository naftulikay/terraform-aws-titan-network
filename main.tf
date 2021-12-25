# Titan Network Module

locals {
  resource_tags = merge({
    titan_network = var.name
    titan_zone = "${var.name_short}.${var.domain}"
  }, var.addtl_tags)
}