# terraform-aws-titan-network [![Build Status][build.svg]][build] [![Terraform Module][module.svg]][module]

Terraform module implementing a Titan Network for AWS.

In object-oriented language, this serves as the abstract superclass of Titan environments and Titan hubs. All shared
resources are declared here and extended as appropriate in the [Titan Environment module][titan-environment] and the 
[Titan Hub module][titan-hub]. 

A Titan Network is composed, by default, of five [Titan Layers][titan-layer], where each Titan Layer is a collection of
subnets, ACLs, route tables, and other related resources. A Titan Layer is a logical grouping of resources across
multiple subnets.

The default layers are:

 1. **DMZ**: The only public layer, used for any resources which must have public IP addresses, such as load-balancers 
    and bastion hosts.
 2. **Routing**: Used for internal request routing, services such as NGINX, HAProxy, Envoy, etc. typically live here as
    the first hop into the network for external traffic.
 3. **Service**: Used for compute services such as web services and asynchronous job processors.
 4. **Data**: Used for stateful data stores such as Redis, MySQL, Elasticsearch, etc.
 5. **Admin**: Used for network admin resources, such as Logstash, Nagios, Kubernetes master nodes, etc.
 6. **Net**: Extensible layer for exotic network services.

## License

Licensed at your discretion under either:

 - [Apache Software License, Version 2.0](./LICENSE-APACHE)
 - [MIT License](./LICENSE-MIT)

 [build]:     https://github.com/naftulikay/terraform-aws-titan-network/actions/workflows/terraform.yml
 [build.svg]: https://github.com/naftulikay/terraform-aws-titan-network/actions/workflows/terraform.yml/badge.svg
 [module]:     https://registry.terraform.io/modules/naftulikay/titan-network/aws/latest
 [module.svg]: https://img.shields.io/badge/terraform-module-purple
 [titan-environment]: https://github.com/naftulikay/terraform-aws-titan-environment
 [titan-layer]: https://github.com/naftulikay/terraform-aws-titan-layer 
 [titan-hub]: https://github.com/naftulikay/terraform-aws-titan-hub