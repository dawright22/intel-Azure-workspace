###########
# Defaults
##########
terraform {
  required_version = ">= 0.13"

}

resource "random_pet" "name" {
  prefix = "customer"
  length = 1
}

resource "tfe_organization" "customer-org" {
  name  = random_pet.name.id
  email = "admin@your-company.com"
}

resource "tfe_workspace" "customer-workspace-1" {
  name         = "${random_pet.name.id}-workspace-1"
  organization = tfe_organization.customer-org.name
  vcs_repo {
    identifier     = "dawright22/Intel-optimised-mssql-vm-caf"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "ARM_SUBSCRIPTION_ID" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.ARM_SUBSCRIPTION_ID
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_SUBSCRIPTION_ID"
}

resource "tfe_variable" "ARM_CLIENT_ID" {
  key          = "ARM_CLIENT_ID"
  value        = var.ARM_CLIENT_ID
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_CLIENT_ID"
}

resource "tfe_variable" "ARM_CLIENT_SECRET" {
  key          = "ARM_CLIENT_SECRET"
  value        = var.ARM_CLIENT_SECRET
  sensitive    = true
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_CLIENT_SECRET"
}

resource "tfe_variable" "ARM_TENANT_ID" {
  key          = "ARM_TENANT_ID"
  value        = var.ARM_TENANT_ID
  category     = "env"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "ARM_TENANT_ID"
}


resource "tfe_variable" "appId" {
  key          = "appId"
  value        = var.appId
  sensitive    = true
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "appId"
}

resource "tfe_variable" "password" {
  key          = "password"
  value        = var.password
  sensitive    = true
  category     = "terraform"
  workspace_id = tfe_workspace.customer-workspace-1.id
  description  = "password"
}
resource "tfe_policy_set" "sentinel_policy_set" {
  name          = "sentinal-policy-set"
  description   = "A Policy Set"
  organization  = tfe_organization.customer-org.name
  workspace_ids = tfe_workspace.customer-workspace-1.id
  vcs_repo {
    identifier         = "dawright22/Intel-sentinel-policy"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = var.oauth_token_id
  }
}

output "user_instructions" {
  value = <<README

 your org name is                                 = ${tfe_organization.customer-org.name}
 your workspace for creating your cluster is      = ${tfe_workspace.customer-workspace-1.name}

README
}
