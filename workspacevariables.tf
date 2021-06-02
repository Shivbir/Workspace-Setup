resource "tfe_organization" "TestingDemo" {
  name  = "TestingDemo"
  email = "shivbir.kaur@gmail.com"
}

resource "tfe_workspace" "networkmodule" {
  name         = "Network-Module"
  organization = tfe_organization.TestingDemo.id
}

resource "tfe_variable" "test" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "AKIA4ZPFYFG3PT5Z377Y"
  category     = "env"
  workspace_id = tfe_workspace.networkmodule.id
  description  = "AWS"
}
resource "tfe_variable" "secret" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "GXLWmzT2wjL2S90zy/OCA97MVREmF4lkU+d7iSWY"
  category     = "env"
  workspace_id = tfe_workspace.networkmodule.id
  description  = "AWS"
}