# Titan Network Module - Route 53 Resources

# Set of Name Servers for Public DNS Resolution
resource aws_route53_delegation_set default {
  count = var.public_dns ? 1 : 0

  reference_name = "${var.name_short}.${var.domain}"
}

# Public Route 53 Hosted Zone
resource aws_route53_zone public {
  count = var.public_dns ? 1 : 0

  name = "${var.name_short}.${var.domain}"
  delegation_set_id = aws_route53_delegation_set.default[0].id

  tags = merge(
    {
      Name = "${var.name_fancy} Public Hosted Zone"
      titan_dns_horizon = "public"
    },
    local.resource_tags
  )
}

# Private/Internal Route 53 Hosted Zone
resource aws_route53_zone private {
  name = "${var.name_short}.${var.domain}"
  vpc {
    vpc_id = aws_vpc.default.id
  }

  tags = merge(
    {
      Name = "${var.name_fancy} Public Hosted Zone"
      titan_dns_horizon = "private"
    },
    local.resource_tags
  )
}

# Reverse Route 53 Hosted Zone
resource aws_route53_zone reverse {
  name = "${var.network_id}.10.in-addr.arpa"
  vpc {
    vpc_id = aws_vpc.default.id
  }

  tags = merge(
    {
      Name = "${var.name_fancy} Reverse Hosted Zone"
      titan_dns_horizon = "reverse"
    },
    local.resource_tags
  )
}
