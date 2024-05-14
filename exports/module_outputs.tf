output admin_cidr_blocks {
  value = module.network.admin_cidr_blocks

  description = <<-EOF
    A list of private IPv4 CIDR blocks for each of the subnets in the admin Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output admin_ipv6_cidr_block_association_ids {
  value = module.network.admin_ipv6_cidr_block_association_ids

  description = <<-EOF
      A list of IPv6 CIDR block association ids for each of the subnets in the admin Titan layer.

      There will be `$${var.subnets_per_layer}` values in this list.
    EOF
}

output admin_ipv6_cidr_blocks {
  value = module.network.admin_ipv6_cidr_blocks

  description = <<-EOF
    A list of IPv6 CIDR blocks for each of the subnets in the admin Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output admin_network_acl_id {
  value = module.network.admin_network_acl_id

  description = <<-EOF
    Id of the network ACL shared by all subnets in the admin Titan layer.
  EOF
}

output admin_route_table_ids {
  value = module.network.admin_route_table_ids

  description = <<-EOF
    A list of route table ids for each of the subnets in the admin Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output admin_subnet_ids {
  value = module.network.admin_subnet_ids

  description = <<-EOF
    A list of subnet ids for each of the subnets in the admin Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output data_cidr_blocks {
  value = module.network.data_cidr_blocks

  description = <<-EOF
    A list of private IPv4 CIDR blocks for each of the subnets in the data Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output data_ipv6_cidr_block_association_ids {
  value = module.network.data_ipv6_cidr_block_association_ids

  description = <<-EOF
      A list of IPv6 CIDR block association ids for each of the subnets in the data Titan layer.

      There will be `$${var.subnets_per_layer}` values in this list.
    EOF
}

output data_ipv6_cidr_blocks {
  value = module.network.data_ipv6_cidr_blocks

  description = <<-EOF
    A list of IPv6 CIDR blocks for each of the subnets in the data Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output data_network_acl_id {
  value = module.network.data_network_acl_id

  description = <<-EOF
    Id of the network ACL shared by all subnets in the data Titan layer.
  EOF
}

output data_route_table_ids {
  value = module.network.data_route_table_ids

  description = <<-EOF
    A list of route table ids for each of the subnets in the data Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output data_subnet_ids {
  value = module.network.data_subnet_ids

  description = <<-EOF
    A list of subnet ids for each of the subnets in the data Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output dmz_cidr_blocks {
  value = module.network.dmz_cidr_blocks

  description = <<-EOF
    A list of private IPv4 CIDR blocks for each of the subnets in the DMZ Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output dmz_ipv6_cidr_block_association_ids {
  value = module.network.dmz_ipv6_cidr_block_association_ids

  description = <<-EOF
      A list of IPv6 CIDR block association ids for each of the subnets in the DMZ Titan layer.

      There will be `$${var.subnets_per_layer}` values in this list.
    EOF
}

output dmz_ipv6_cidr_blocks {
  value = module.network.dmz_ipv6_cidr_blocks

  description = <<-EOF
    A list of IPv6 CIDR blocks for each of the subnets in the DMZ Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output dmz_network_acl_id {
  value = module.network.dmz_network_acl_id

  description = <<-EOF
    Id of the network ACL shared by all subnets in the DMZ Titan layer.
  EOF
}

output dmz_route_table_ids {
  value = module.network.dmz_route_table_ids

  description = <<-EOF
    A list of route table ids for each of the subnets in the DMZ Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output dmz_subnet_ids {
  value = module.network.dmz_subnet_ids

  description = <<-EOF
    A list of subnet ids for each of the subnets in the DMZ Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output net_cidr_blocks {
  value = module.network.net_cidr_blocks

  description = <<-EOF
    A list of private IPv4 CIDR blocks for each of the subnets in the net Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output net_ipv6_cidr_block_association_ids {
  value = module.network.net_ipv6_cidr_block_association_ids

  description = <<-EOF
      A list of IPv6 CIDR block association ids for each of the subnets in the net Titan layer.

      There will be `$${var.subnets_per_layer}` values in this list.
    EOF
}

output net_ipv6_cidr_blocks {
  value = module.network.net_ipv6_cidr_blocks

  description = <<-EOF
    A list of IPv6 CIDR blocks for each of the subnets in the net Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output net_network_acl_id {
  value = module.network.net_network_acl_id

  description = <<-EOF
    Id of the network ACL shared by all subnets in the net Titan layer.
  EOF
}

output net_route_table_ids {
  value = module.network.net_route_table_ids

  description = <<-EOF
    A list of route table ids for each of the subnets in the net Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output net_subnet_ids {
  value = module.network.net_subnet_ids

  description = <<-EOF
    A list of subnet ids for each of the subnets in the net Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output routing_cidr_blocks {
  value = module.network.routing_cidr_blocks

  description = <<-EOF
    A list of private IPv4 CIDR blocks for each of the subnets in the routing Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output routing_ipv6_cidr_block_association_ids {
  value = module.network.routing_ipv6_cidr_block_association_ids

  description = <<-EOF
      A list of IPv6 CIDR block association ids for each of the subnets in the routing Titan layer.

      There will be `$${var.subnets_per_layer}` values in this list.
    EOF
}

output routing_ipv6_cidr_blocks {
  value = module.network.routing_ipv6_cidr_blocks

  description = <<-EOF
    A list of IPv6 CIDR blocks for each of the subnets in the routing Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output routing_network_acl_id {
  value = module.network.routing_network_acl_id

  description = <<-EOF
    Id of the network ACL shared by all subnets in the routing Titan layer.
  EOF
}

output routing_route_table_ids {
  value = module.network.routing_route_table_ids

  description = <<-EOF
    A list of route table ids for each of the subnets in the routing Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output routing_subnet_ids {
  value = module.network.routing_subnet_ids

  description = <<-EOF
    A list of subnet ids for each of the subnets in the routing Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output service_cidr_blocks {
  value = module.network.service_cidr_blocks

  description = <<-EOF
    A list of private IPv4 CIDR blocks for each of the subnets in the service Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output service_ipv6_cidr_block_association_ids {
  value = module.network.service_ipv6_cidr_block_association_ids

  description = <<-EOF
      A list of IPv6 CIDR block association ids for each of the subnets in the service Titan layer.

      There will be `$${var.subnets_per_layer}` values in this list.
    EOF
}

output service_ipv6_cidr_blocks {
  value = module.network.service_ipv6_cidr_blocks

  description = <<-EOF
    A list of IPv6 CIDR blocks for each of the subnets in the service Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output service_network_acl_id {
  value = module.network.service_network_acl_id

  description = <<-EOF
    Id of the network ACL shared by all subnets in the service Titan layer.
  EOF
}

output service_route_table_ids {
  value = module.network.service_route_table_ids

  description = <<-EOF
    A list of route table ids for each of the subnets in the service Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output service_subnet_ids {
  value = module.network.service_subnet_ids

  description = <<-EOF
    A list of subnet ids for each of the subnets in the service Titan layer.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output all_subnet_cidr_blocks {
  value = module.network.all_subnet_cidr_blocks

  description = <<-EOF
    A list of all IPv4 CIDR blocks for all subnets in all layers in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output all_subnet_ids {
  value = module.network.all_subnet_ids

  description = <<-EOF
    A list of all subnet ids for all subnets in all layers in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output all_subnet_ipv6_cidr_block_association_ids {
  value = module.network.all_subnet_ipv6_cidr_block_association_ids

  description = <<-EOF
    A list of all IPv6 CIDR block association ids for all subnets in all layers in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output all_subnet_ipv6_cidr_blocks {
  value = module.network.all_subnet_ipv6_cidr_blocks

  description = <<-EOF
    A list of all IPv6 CIDR blocks for all subnets in all layers in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output all_subnet_network_acl_ids {
  value = module.network.all_subnet_network_acl_ids

  description = <<-EOF
    A list of network ACLs for each layer (one ACL per layer, shared by all subnets in that layer).
  EOF
}

output all_subnet_route_table_ids {
  value = module.network.all_subnet_route_table_ids

  description = <<-EOF
    A list of all route table ids for all subnets in all layers in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output public_cidr_blocks {
  value = module.network.public_cidr_blocks

  description = <<-EOF
    A list of all IPv4 CIDR blocks for all public subnets in ascending order; the only public layer is the DMZ layer.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output public_ipv6_cidr_block_association_ids {
  value = module.network.public_ipv6_cidr_block_association_ids

  description = <<-EOF
    A list of all IPv6 CIDR block association ids for public subnets in ascending order; the only public layer is the
    DMZ layer.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output public_ipv6_cidr_blocks {
  value = module.network.public_ipv6_cidr_blocks

  description = <<-EOF
    A list of all IPv6 CIDR blocks for public subnets in ascending order; the only public layer is the DMZ layer.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output public_network_acl_ids {
  value = module.network.public_network_acl_ids

  description = <<-EOF
    A list of all network ACL ids for public layers (one NACL per layer) in ascending order; the only public layer is
    the DMZ layer.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output public_route_table_ids {
  value = module.network.public_route_table_ids

  description = <<-EOF
    A list of all route table ids for public subnets in ascending order; the only public layer is the DMZ layer.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output public_subnet_ids {
  value = module.network.public_subnet_ids

  description = <<-EOF
    A list of all subnet ids for public layers in ascending order; the only public layer is the DMZ layer.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output private_cidr_blocks {
  value = module.network.private_cidr_blocks

  description = <<-EOF
    A list of all IPv4 CIDR blocks for all private subnets in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output private_ipv6_cidr_block_association_ids {
  value = module.network.private_ipv6_cidr_block_association_ids

  description = <<-EOF
    A list of all IPv6 CIDR block association ids for private subnets in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output private_ipv6_cidr_blocks {
  value = module.network.private_ipv6_cidr_blocks

  description = <<-EOF
    A list of all IPv6 CIDR blocks for private subnets in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output private_network_acl_ids {
  value = module.network.private_network_acl_ids

  description = <<-EOF
    A list of all network ACL ids for private layers (one NACL per layer) in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output private_route_table_ids {
  value = module.network.private_route_table_ids

  description = <<-EOF
    A list of all route table ids for private subnets in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output private_subnet_ids {
  value = module.network.private_subnet_ids

  description = <<-EOF
    A list of all subnet ids for private layers in ascending order.

    These values may be easily associated with availability zones and arbitrary layers by using the modulo operator
    around the value of `$${var.subnets_per_az}`.
  EOF
}

output nat_enabled {
  value = module.network.nat_enabled

  description = <<-EOF
    Whether NAT gateways and relevant resources are created.
  EOF
}

output nat_allocation_ids {
  value = module.network.nat_allocation_ids

  description = <<-EOF
    The Elastic IP allocation ids for each NAT Gateway in this Titan network.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output nat_gateway_ids {
  value = module.network.nat_gateway_ids

  description = <<-EOF
    Ids for each NAT Gateway in this Titan network.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output nat_subnet_ids {
  value = module.network.nat_subnet_ids

  description = <<-EOF
    The ids of the subnets associated with each NAT Gateway.

    NAT Gateways live in the DMZ layer, facing WAN, therefore this value will be the same subnets output by the DMZ
    layer module. There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output nat_interface_ids {
  value = module.network.nat_interface_ids

  description = <<-EOF
    The ids of the network interfaces associated with each NAT Gateway.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output nat_private_ips {
  value = module.network.nat_private_ips

  description = <<-EOF
    The private IPv4 addresses of each NAT Gateway.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output nat_public_ips {
  value = module.network.nat_public_ips

  description = <<-EOF
    The public IPv4 addresses of each NAT Gateway.

    There will be `$${var.subnets_per_layer}` values in this list.
  EOF
}

output delegation_set_id {
  value = module.network.delegation_set_id

  description = <<-EOF
    Unique identifier for the Route 53 delegation set associated with the public Route 53 hosted zone for this Titan
    network.

    See: https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html
  EOF
}

output delegation_set_name_servers {
  value = module.network.delegation_set_name_servers

  description = <<-EOF
    A set of Amazon name servers serving the public Route 53 hosted zone for this Titan network.

    Typically, these values are used with your DNS provider to delegate public DNS resolution for this Titan network.

    See: https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html
  EOF
}

output domain {
  value = module.network.domain

  description = <<-EOF
    Value of the `domain` variable exported for usability.

    Note that this is not a FQDN ending with a period. If you are using `zone_override`, this value will not be useful.
  EOF
}

output private_zone_id {
  value = module.network.private_zone_id

  description = <<-EOF
    The Amazon hosted zone identifier for the private Route 53 hosted zone for this Titan network.

    See: https://www.terraform.io/docs/providers/aws/r/route53_zone.html
  EOF
}

output public_dns {
  value = module.network.public_dns

  description = <<-EOF
    Whether this network has public DNS enabled in Route 53.

    If this value is false, no public Route 53 zone or delegation set will be created.
  EOF
}

output public_zone_id {
  value = module.network.public_zone_id

  description = <<-EOF
    The Amazon hosted zone identifier for the public Route 53 hosted zone for this Titan network.

    See: https://www.terraform.io/docs/providers/aws/r/route53_zone.html
  EOF
}

output reverse_zone {
  value = module.network.reverse_zone

  description = <<-EOF
    The reverse hosted zone name for this Titan network.

    Note that this is not a FQDN ending with a period.
  EOF
}

output reverse_zone_id {
  value = module.network.reverse_zone_id

  description = <<-EOF
    The Amazon hosted zone identifier for the reverse Route 53 hosted zone for this Titan network.

    See: https://www.terraform.io/docs/providers/aws/r/route53_zone.html
  EOF
}

output zone {
  value = module.network.zone

  description = <<-EOF
    The hosted zone domain name for this Titan network.

    Note that this is not a FQDN ending with a period.
  EOF
}

output zone_override {
  value = module.network.zone_override

  description = <<-EOF
    Convenience output with the value of the `zone_override` variable.
  EOF
}

output default_security_group_id {
  value = module.network.default_security_group_id

  description = <<-EOF
    The default security group ID for this Titan network's VPC.

    See: https://www.terraform.io/docs/providers/aws/r/vpc.html
  EOF
}

output internal_ssh_sg_id {
  value = module.network.internal_ssh_sg_id

  description = <<-EOF
    Security group ID of the internal SSH security group for this Titan network.
  EOF
}

output autoscaling_sns_topic_arn {
  value = module.network.autoscaling_sns_topic_arn

  description = <<-EOF
    ARN of the SNS autoscaling topic.

    This SNS topic is intended to be attached to autoscaling groups in this Titan network in order to provide a
    centralized notification topic which is notified when servers are added and removed from autoscaling groups.
  EOF
}

output cidr_block {
  value = module.network.cidr_block

  description = <<-EOF
    IPv4 CIDR block occupied by this Titan network.

    Generally this will be `10.$${var.network_id}.0.0/16`.
  EOF
}

output default_network_acl_id {
  value = module.network.default_network_acl_id

  description = <<-EOF
    The ID of the default network ACL created by AWS for this Titan network.

    See: https://www.terraform.io/docs/providers/aws/r/vpc.html
  EOF
}

output default_route_table_id {
  value = module.network.default_route_table_id

  description = <<-EOF
    The ID of the default route table created by AWS for this Titan network.

    See: https://www.terraform.io/docs/providers/aws/r/vpc.html
  EOF
}

output dhcp_options_id {
  value = module.network.dhcp_options_id

  description = <<-EOF
    The id of this Titan network's DHCP options set.

    See: https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html
  EOF
}

output dhcp_options_association_id {
  value = module.network.dhcp_options_association_id

  description = <<-EOF
    The id of this Titan network's DHCP options set association.

    See: https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html
  EOF
}

output domain_name_servers {
  value = module.network.domain_name_servers

  description = <<-EOF
    A list of DNS resolvers for this Titan network.

    See: https://www.terraform.io/docs/providers/aws/r/vpc.html
  EOF
}

output egress_only_internet_gateway_id {
  value = module.network.egress_only_internet_gateway_id

  description = <<-EOF
    ID for the IPv6 egress-only internet gateway for this Titan network.
  EOF
}

output id {
  value = module.network.id

  description = <<-EOF
    Synonym for `network_id`, the second IP octet uniquely identifying this Titan network.
  EOF
}

output instance_tenancy {
  value = module.network.instance_tenancy

  description = <<-EOF
    Instance tenancy for EC2 instances launched in this Titan network's VPC.

    See: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html
  EOF
}

output internet_gateway_id {
  value = module.network.internet_gateway_id

  description = <<-EOF
    ID for the IPv4 internet gateway for this Titan network.
  EOF
}

output ipv6_association_id {
  value = module.network.ipv6_association_id

  description = <<-EOF
    The association ID for the IPv6 CIDR block of this Titan network's VPC.
  EOF
}

output ipv6_cidr_block {
  value = module.network.ipv6_cidr_block

  description = <<-EOF
    The IPv6 CIDR block automatically assigned to this Titan network by AWS.
  EOF
}

output main_route_table_id {
  value = module.network.main_route_table_id

  description = <<-EOF
    The ID of the main route table created by default by AWS for this Titan network.
  EOF
}

output netbios_name_servers {
  value = module.network.netbios_name_servers

  description = <<-EOF
    The NetBIOS name servers for this Titan network.
  EOF
}

output netbios_node_type {
  value = module.network.netbios_node_type

  description = <<-EOF
    The NetBIOS node type (1, 2, 4, or 8).
  EOF
}

output network_id {
  value = module.network.network_id

  description = <<-EOF
    The second IP octet uniquely identifiing this Titan network.
  EOF
}

output ntp_servers {
  value = module.network.ntp_servers

  description = <<-EOF
    A list of up to four NTP servers broadcast to hosts via DHCP within this Titan network.
  EOF
}

output octet_0 {
  value = module.network.octet_0

  description = <<-EOF
    The first octet of this Titan network's space.

    In compliance with RFC 1918, the first octet is hard-coded to 10, as this is the only reserved address block which
    is a `/8` dedicated to private networking.
  EOF
}

output octet_1 {
  value = module.network.octet_1

  description = <<-EOF
    Synonym for `network_id`, the second IP octet uniquely identifying this Titan network.
  EOF
}

output subnets_per_layer {
  value = module.network.subnets_per_layer

  description = <<-EOF
    The amount of subnets contained in a single Titan layer for this network.
  EOF
}

output vpc_id {
  value = module.network.vpc_id

  description = <<-EOF
    VPC identifier for this Titan network.
  EOF
}

output aws_vpce_gateway_services {
  value = module.network.aws_vpce_gateway_services

  description = <<-EOF
    Convenience output of the `aws_vpce_gateway_services` variable.
  EOF
}

output aws_vpce_gateway_services_layers {
  value = module.network.aws_vpce_gateway_services_layers

  description = <<-EOF
    Convenience output of the `aws_vpce_gateway_services_layers` variable.
  EOF
}

output aws_vpce_gateway_service_ids {
  value = module.network.aws_vpce_gateway_service_ids

  description = <<-EOF
    A map of service names to VPC endpoint ids for each service.
  EOF
}

output aws_vpce_gateway_service_prefix_list_ids {
  value = module.network.aws_vpce_gateway_service_prefix_list_ids

  description = <<-EOF
    A map of service names to prefix list ids for each VPC endpoint service.
  EOF
}

output aws_vpce_gateway_service_cidr_blocks {
  value = module.network.aws_vpce_gateway_service_cidr_blocks

  description = <<-EOF
    A map of service names to a list of CIDR blocks for each VPC endpoint service.
  EOF
}

output account_id {
  value = module.network.account_id

  description = <<-EOF
    The AWS account id in which this Titan network lives.
  EOF
}

output addtl_tags {
  value = module.network.addtl_tags

  description = <<-EOF
    Additional tags applied to resources.
  EOF
}

output availability_zones {
  value = module.network.availability_zones

  description = <<-EOF
    The availability zones which this Titan network occupies. The length of this list is set by the `subnets_per_layer`
    variable.
  EOF
}

output name {
  value = module.network.name

  description = <<-EOF
    Long name of the Titan network.
  EOF
}

output name_fancy {
  value = module.network.name_fancy

  description = <<-EOF
    "Fancy" name for the Titan network.
  EOF
}

output name_short {
  value = module.network.name_short

  description = <<-EOF
    Short name of the Titan network.
  EOF
}

output region {
  value = module.network.region

  description = <<-EOF
    The AWS region in which this Titan network lives.
  EOF
}

output resource_tags {
  value = module.network.resource_tags

  description = <<-EOF
    Common tags associated with all resources.
  EOF
}