# Titan Network Module - VPC Endpoint Outputs

output aws_vpce_gateway_services {
  value = var.aws_vpce_gateway_services

  description = <<-EOF
    Convenience output of the `aws_vpce_gateway_services` variable.
  EOF
}

output aws_vpce_gateway_services_layers {
  value = var.aws_vpce_gateway_services_layers

  description = <<-EOF
    Convenience output of the `aws_vpce_gateway_services_layers` variable.
  EOF
}

output aws_vpce_gateway_service_ids {
  value = {
    for service in var.aws_vpce_gateway_services : service => aws_vpc_endpoint.gateway[service].id
  }

  description = <<-EOF
    A map of service names to VPC endpoint ids for each service.
  EOF
}

output aws_vpce_gateway_service_prefix_list_ids {
  value = {
    for service in var.aws_vpce_gateway_services : service => aws_vpc_endpoint.gateway[service].prefix_list_id
  }

  description = <<-EOF
    A map of service names to prefix list ids for each VPC endpoint service.
  EOF
}

output aws_vpce_gateway_service_cidr_blocks {
  value = {
    for service in var.aws_vpce_gateway_services : service => aws_vpc_endpoint.gateway[service].cidr_blocks
  }

  description = <<-EOF
    A map of service names to a list of CIDR blocks for each VPC endpoint service.
  EOF
}
