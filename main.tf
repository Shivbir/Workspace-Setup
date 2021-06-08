terraform {
  required_providers {
    tfe = {
      version = "~> 0.25.0"
    }
  }
}

provider "tfe" {
  token    = ""
  version  = "~> 0.25.0"
}
