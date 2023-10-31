# Titan Network Module - Route 53 Variables

variable domain {
  type = string
  description = <<-EOF
    The base domain to derive network hosted zones from.

    Usually, this value is set to something like `mydomain.com`, yielding hosted zones for environments like
    `dev.mydomain.com`, `stg.mydomain.com`, and `prod.mydomain.com`. Zone names are calculated with `"$${var.name_short}.$${var.domain}"`.

    If the automatic naming scheme is not what you want, see the `zone_override` variable.

    Examples: `mydomain.com`, `mycompanydomain.com`, `uswest1.mydomain.com`. 
  EOF
}

variable public_dns {
  type = bool
  default = true

  description = <<-EOF
    Whether to create a public Route 53 hosted zone.

    If you are hosting your public DNS elsewhere, you should probably set this to false.
  EOF
}

variable zone_override {
  type = string
  default = null

  description = <<-EOF
    If this value is not null, it will be used directly for the public/private Route 53 hosted zone names. This value
    should be a FQDN and need not end in a period.

    Defaults to null. The default functionality is to create a public and private Route 53 hosted zone named
    `"$${var.name_short}.$$tf{var.domain}"`.
  EOF
}
