provider "tfe" {
  version = "~> 0.25.0"
}

resource "tfe_organization" "test" {
  name  = "shiv-test"
  email = "shivbir.kaur@gmail.com"
}

resource "tfe_workspace" "test" {
  name         = "Network-Module"
  organization = tfe_organization.test.id
}

resource "tfe_variable" "test" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "AKIA4ZPFYFG3PT5Z377Y"
  category     = "env"
  workspace_id = tfe_workspace.test.id
  description  = "AWS"
}