# Titan Network Module - Layer Resources

# The DMZ Layer: WAN-Facing
module dmz_layer {
  source = "naftulikay/titan-layer/aws"
  version = "~> 3.0.1"

  name = "dmz"
  is_public = true
  availability_zones = slice(data.aws_availability_zones.default.names, 0, var.subnets_per_layer)
  network_cidr_block = aws_vpc.default.cidr_block
  network_ipv6_cidr_block = aws_vpc.default.ipv6_cidr_block
  network_name = var.name
  vpc_id = aws_vpc.default.id
  zone = local.zone_name
  internet_gateway_id = aws_internet_gateway.default.id
  cidr_start = 0 * 5
  nat_enabled = var.nat_enabled

  addtl_tags = var.addtl_tags
}

# The Routing Layer: Layer 5 and Layer 7 Routing
module routing_layer {
  source = "naftulikay/titan-layer/aws"
  version = "~> 3.0.1"

  name = "routing"
  availability_zones = slice(data.aws_availability_zones.default.names, 0, var.subnets_per_layer)
  network_cidr_block = aws_vpc.default.cidr_block
  network_ipv6_cidr_block = aws_vpc.default.ipv6_cidr_block
  network_name = var.name
  vpc_id = aws_vpc.default.id
  zone = local.zone_name
  cidr_start = 1 * 5
  egress_only_gateway_id = aws_egress_only_internet_gateway.default.id
  nat_enabled = var.nat_enabled
  nat_gateway_ids = [for gateway in aws_nat_gateway.default : gateway.id]

  addtl_tags = var.addtl_tags
}

# The Service Layer: Application Servers and Services
module service_layer {
  source = "naftulikay/titan-layer/aws"
  version = "~> 3.0.1"

  name = "service"
  availability_zones = slice(data.aws_availability_zones.default.names, 0, var.subnets_per_layer)
  network_cidr_block = aws_vpc.default.cidr_block
  network_ipv6_cidr_block = aws_vpc.default.ipv6_cidr_block
  network_name = var.name
  vpc_id = aws_vpc.default.id
  zone = local.zone_name
  cidr_start = 2 * 5
  egress_only_gateway_id = aws_egress_only_internet_gateway.default.id
  nat_enabled = var.nat_enabled
  nat_gateway_ids = [for gateway in aws_nat_gateway.default : gateway.id]

  addtl_tags = var.addtl_tags
}

# The Data Layer: Data-Stores
module data_layer {
  source = "naftulikay/titan-layer/aws"
  version = "~> 3.0.1"

  name = "data"
  availability_zones = slice(data.aws_availability_zones.default.names, 0, var.subnets_per_layer)
  network_cidr_block = aws_vpc.default.cidr_block
  network_ipv6_cidr_block = aws_vpc.default.ipv6_cidr_block
  network_name = var.name
  vpc_id = aws_vpc.default.id
  zone = local.zone_name
  cidr_start = 3 * 5
  egress_only_gateway_id = aws_egress_only_internet_gateway.default.id
  nat_enabled = var.nat_enabled
  nat_gateway_ids = [for gateway in aws_nat_gateway.default : gateway.id]

  addtl_tags = var.addtl_tags
}

# The Admin Layer: Administrative Services
module admin_layer {
  source = "naftulikay/titan-layer/aws"
  version = "~> 3.0.1"

  name = "admin"
  availability_zones = slice(data.aws_availability_zones.default.names, 0, var.subnets_per_layer)
  network_cidr_block = aws_vpc.default.cidr_block
  network_ipv6_cidr_block = aws_vpc.default.ipv6_cidr_block
  network_name = var.name
  vpc_id = aws_vpc.default.id
  zone = local.zone_name
  cidr_start = 4 * 5
  egress_only_gateway_id = aws_egress_only_internet_gateway.default.id
  nat_enabled = var.nat_enabled
  nat_gateway_ids = [for gateway in aws_nat_gateway.default : gateway.id]

  addtl_tags = var.addtl_tags
}

# The Net Layer: Networking Equipment and Services
module net_layer {
  source = "naftulikay/titan-layer/aws"
  version = "~> 3.0.1"

  name = "net"
  availability_zones = slice(data.aws_availability_zones.default.names, 0, var.subnets_per_layer)
  network_cidr_block = aws_vpc.default.cidr_block
  network_ipv6_cidr_block = aws_vpc.default.ipv6_cidr_block
  network_name = var.name
  vpc_id = aws_vpc.default.id
  zone = local.zone_name

  # this layer consists of n /24s as opposed to n /23s
  cidr_start = 250
  cidr_mask_bits = 8

  egress_only_gateway_id = aws_egress_only_internet_gateway.default.id
  nat_enabled = var.nat_enabled
  nat_gateway_ids = [for gateway in aws_nat_gateway.default : gateway.id]

  addtl_tags = var.addtl_tags
}
