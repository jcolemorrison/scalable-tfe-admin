# Media Domain Project
# Independent resource - can be moved/modified without affecting other projects
# Provider: tfe ~> 0.70

resource "tfe_project" "media_core" {
  organization = data.tfe_organization.this.name
  name         = "project-media-core"
  description  = "Media streaming and content delivery"
}

# Global admins get admin access to media project
resource "tfe_team_project_access" "global_admins_media" {
  access     = "admin"
  team_id    = tfe_team.global_admins.id
  project_id = tfe_project.media_core.id
}

# Platform media admins get admin access to media project
resource "tfe_team_project_access" "platform_media_admins" {
  access     = "admin"
  team_id    = tfe_team.platform_admins["media"].id
  project_id = tfe_project.media_core.id
}
