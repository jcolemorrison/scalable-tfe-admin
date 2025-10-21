# Analytics Domain Project
# Independent resource - can be moved/modified without affecting other projects
# Provider: tfe ~> 0.70

resource "tfe_project" "analytics_core" {
  organization = data.tfe_organization.this.name
  name         = "project-analytics-core"
  description  = "Analytics and data intelligence platform"
}

# Global admins get admin access to analytics project
resource "tfe_team_project_access" "global_admins_analytics" {
  access     = "admin"
  team_id    = tfe_team.global_admins.id
  project_id = tfe_project.analytics_core.id
}

# Platform analytics admins get admin access to analytics project
resource "tfe_team_project_access" "platform_analytics_admins" {
  access     = "admin"
  team_id    = tfe_team.platform_admins["analytics"].id
  project_id = tfe_project.analytics_core.id
}
