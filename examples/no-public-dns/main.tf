# titan-network Example: No Public DNS

locals {}

variable region {
  type = string
  default = "us-east-1"
}

provider aws {
  region = var.region
}

module network {
  source = "../../"

  name = "production"
  name_short = "prod"
  name_fancy = "Production"
  network_id = 127
  domain = "example.com"

  public_dns = false
}

terraform {
  required_version = "~> 1"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5"
    }
  }
}