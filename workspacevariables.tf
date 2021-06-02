resource "tfe_organization" "demo" {
  name  = "demo"
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
resource "tfe_variable" "secret" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "GXLWmzT2wjL2S90zy/OCA97MVREmF4lkU+d7iSWY"
  category     = "env"
  workspace_id = tfe_workspace.test.id
  description  = "AWS"
}