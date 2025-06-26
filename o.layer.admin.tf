# Titan Network Module - Admin Layer Outputs

output admin_cidr_blocks {
  value = module.admin_layer.cidr_blocks

  description = <<-EOF
    A list of private IPv4 CIDR blocks for each of the subnets in the admin Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output admin_ipv6_cidr_block_association_ids {
    value = module.admin_layer.ipv6_cidr_block_association_ids

    description = <<-EOF
      A list of IPv6 CIDR block association ids for each of the subnets in the admin Titan layer.

      There will be `$${var.subnets_per_layer}` values in this list.
    EOF
}

output admin_ipv6_cidr_blocks {
  value = module.admin_layer.ipv6_cidr_blocks

  description = <<-EOF
    A list of IPv6 CIDR blocks for each of the subnets in the admin Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output admin_layer_resource_tags {
  value = module.admin_layer.resource_tags

  description = <<-EOF
    Common tags for resources created in the admin Titan layer.

    When creating a resource that is tied to the admin layer, append these tags to the resource tags to ensure tagging
    consistency.
  EOF
}

output admin_network_acl_id {
  value = module.admin_layer.network_acl_id

  description = <<-EOF
    Id of the network ACL shared by all subnets in the admin Titan layer.
  EOF
}

output admin_route_table_ids {
  value = module.admin_layer.route_table_ids

  description = <<-EOF
    A list of route table ids for each of the subnets in the admin Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output admin_subnet_ids {
  value = module.admin_layer.subnet_ids

  description = <<-EOF
    A list of subnet ids for each of the subnets in the admin Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}
