# titan-network Example: Default

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

  name = "development"
  name_short = "dev"
  name_fancy = "Development"
  network_id = 127
  domain = "example.com"
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