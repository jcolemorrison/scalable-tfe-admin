# Gaming Domain Project
# Independent resource - can be moved/modified without affecting other projects
# Provider: tfe ~> 0.70

resource "tfe_project" "gaming_core" {
  organization = data.tfe_organization.this.name
  name         = "project-gaming-core"
  description  = "Gaming platform infrastructure and applications"
}

# Global admins get admin access to gaming project
resource "tfe_team_project_access" "global_admins_gaming" {
  access     = "admin"
  team_id    = tfe_team.global_admins.id
  project_id = tfe_project.gaming_core.id
}

# Platform gaming admins get admin access to gaming project
resource "tfe_team_project_access" "platform_gaming_admins" {
  access     = "admin"
  team_id    = tfe_team.platform_admins["gaming"].id
  project_id = tfe_project.gaming_core.id
}
