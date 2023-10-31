# Titan Network Module - VPC Endpoint Resourcees

resource aws_vpc_endpoint gateway {
  # create a vpc endpoint for each specified gateway service
  for_each = length(local.vpce_route_table_ids) > 0 ? var.aws_vpce_gateway_services : toset([])

  vpc_id = aws_vpc.default.id
  service_name = data.aws_vpc_endpoint_service.gateway[each.value].service_name

  # attach to all layer route table ids specified in var.aws_vpce_gateway_services_layers
  route_table_ids = local.vpce_route_table_ids

  tags = merge({ Name = "${each.value}.${local.zone_name}" }, local.resource_tags)
}
