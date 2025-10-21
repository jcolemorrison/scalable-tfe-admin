# Social Domain Project
# Independent resource - can be moved/modified without affecting other projects
# Provider: tfe ~> 0.70

resource "tfe_project" "social_core" {
  organization = data.tfe_organization.this.name
  name         = "project-social-core"
  description  = "Social platform and community features"
}

# Global admins get admin access to social project
resource "tfe_team_project_access" "global_admins_social" {
  access     = "admin"
  team_id    = tfe_team.global_admins.id
  project_id = tfe_project.social_core.id
}

# Platform social admins get admin access to social project
resource "tfe_team_project_access" "platform_social_admins" {
  access     = "admin"
  team_id    = tfe_team.platform_admins["social"].id
  project_id = tfe_project.social_core.id
}
