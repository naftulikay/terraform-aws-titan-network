# Titan Network Module - VPC Endpoint Data Resources

data aws_vpc_endpoint_service gateway {
  for_each = toset(var.aws_vpce_gateway_services)

  service = each.key
  service_type = "Gateway"
}
