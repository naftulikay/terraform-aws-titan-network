# Titan Network Examples

## Default

This example stands up a Titan Network with default settings.

This assumes the following:

 1. You are using Route 53 for public DNS.
 2. You want NAT gateways for internet access from private subnets.
 3. You want a reliability factor of 3, in that each layer will contain subnets for three
    availability zones.