# Titan Network Module - Data Layer Outputs

output data_cidr_blocks {
  value = module.data_layer.cidr_blocks

  description = <<-EOF
    A list of private IPv4 CIDR blocks for each of the subnets in the data Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output data_ipv6_cidr_block_association_ids {
    value = module.data_layer.ipv6_cidr_block_association_ids

    description = <<-EOF
      A list of IPv6 CIDR block association ids for each of the subnets in the data Titan layer.

      There will be `$${var.subnets_per_layer}` values in this list.
    EOF
}

output data_ipv6_cidr_blocks {
  value = module.data_layer.ipv6_cidr_blocks

  description = <<-EOF
    A list of IPv6 CIDR blocks for each of the subnets in the data Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output data_layer_resource_tags {
  value = module.data_layer.resource_tags

  description = <<-EOF
    Common tags for resources created in the data Titan layer.

    When creating a resource that is tied to the data layer, append these tags to the resource tags to ensure tagging
    consistency.
  EOF
}

output data_network_acl_id {
  value = module.data_layer.network_acl_id

  description = <<-EOF
    Id of the network ACL shared by all subnets in the data Titan layer.
  EOF
}

output data_route_table_ids {
  value = module.data_layer.route_table_ids

  description = <<-EOF
    A list of route table ids for each of the subnets in the data Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output data_subnet_ids {
  value = module.data_layer.subnet_ids

  description = <<-EOF
    A list of subnet ids for each of the subnets in the data Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}
