# Titan Network Examples

## No NAT Gateways

This example stands up a Titan Network without creating NAT gateways.

There are a couple reasons you may want to do this:

 1. Your security policy is to route all traffic from internal hosts through a proxy, disallowing direct internet
    access over NAT.
 2. You are trying to save money, as NAT gateways cost approximately $40/month _each_ without any bandwidth usage,
    leading to a Titan Network costing $120/month. If you're just getting started and don't need private subnets to
    have internet access, this may be the right choice.