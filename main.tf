# Titan Network Module

locals {
  resource_tags = merge({
    titan_network = var.name
    titan_zone = local.zone_name
  }, var.addtl_tags)

  vpce_route_table_ids = flatten(concat(
    contains(var.aws_vpce_gateway_services_layers, "dmz")     ? [module.dmz_layer.route_table_ids]     : [],
    contains(var.aws_vpce_gateway_services_layers, "routing") ? [module.routing_layer.route_table_ids] : [],
    contains(var.aws_vpce_gateway_services_layers, "service") ? [module.service_layer.route_table_ids] : [],
    contains(var.aws_vpce_gateway_services_layers, "data")    ? [module.data_layer.route_table_ids]    : [],
    contains(var.aws_vpce_gateway_services_layers, "admin")   ? [module.admin_layer.route_table_ids]   : [],
    contains(var.aws_vpce_gateway_services_layers, "net")     ? [module.net_layer.route_table_ids]     : [],
  ))

  zone_name = var.zone_override == null ? "${var.name_short}.${var.domain}" : var.zone_override
}