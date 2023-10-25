# Titan Network Module - Terraform Provider Configuration

terraform {
  required_version = "~> 1"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5"
    }
  }
}