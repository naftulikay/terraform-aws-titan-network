provider aws {
  region = "us-east-1"
}

module network {
  source = "../"

  name = "development"
  name_short = "dev"
  name_fancy = "Development"
  network_id = 127
  domain = "example.com"
}