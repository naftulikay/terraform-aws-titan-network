# Titan Network Module - Route 53 Variables

variable domain {
  type = string
  description = <<-EOF
    The base domain to derive network hosted zones from.

    Usually, this value is set to something like `mydomain.com`, yielding hosted zones for environments like
    `dev.mydomain.com`, `stg.mydomain.com`, and `prod.mydomain.com`.

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
