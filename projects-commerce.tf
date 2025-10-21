# Commerce Domain Project
# Independent resource - can be moved/modified without affecting other projects
# Provider: tfe ~> 0.70

resource "tfe_project" "commerce_core" {
  organization = data.tfe_organization.this.name
  name         = "project-commerce-core"
  description  = "E-commerce platform and payment systems"
}

# Global admins get admin access to commerce project
resource "tfe_team_project_access" "global_admins_commerce" {
  access     = "admin"
  team_id    = tfe_team.global_admins.id
  project_id = tfe_project.commerce_core.id
}

# Platform commerce admins get admin access to commerce project
resource "tfe_team_project_access" "platform_commerce_admins" {
  access     = "admin"
  team_id    = tfe_team.platform_admins["commerce"].id
  project_id = tfe_project.commerce_core.id
}
