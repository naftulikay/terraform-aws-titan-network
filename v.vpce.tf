# Titan Network Module - VPC Endpoint Variables

variable aws_vpce_gateway_services {
  type = set(string)
  default = ["dynamodb", "s3"]
  description = <<-EOF
    A list of lowercase AWS service names to create VPC endpoints for. These VPC endpoints will be attached to all
    subnets of each of the layers specified in `aws_vpce_gateway_services_layers`.

    VPC endpoints set up local networking routes for AWS services, usually resulting in lower latency, higher
    throughput, and results in not needing a NAT gateway or public IP address to reach AWS services.

    According to AWS docs, at present, only S3 and DynamoDB are supported.

    See: https://docs.aws.amazon.com/vpc/latest/privatelink/gateway-endpoints.html
  EOF
}

variable aws_vpce_gateway_services_layers {
  type = set(string)
  default = ["dmz", "routing", "service", "data", "admin", "net"]
  description = <<-EOF
    A list of layer names to insert the VPC endpoint gateway routes into.

    Defaults to all layers. For a higher-security setup via the principle of least privilege, it may be desired to set
    this to all layers except the `dmz`, which is the only public layer.
  EOF
}