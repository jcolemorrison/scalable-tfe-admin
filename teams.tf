# Global Admins - Full org control
resource "tfe_team" "global_admins" {
  name         = "global-admins"
  organization = data.tfe_organization.this.name
  visibility   = "organization"

  organization_access {
    manage_policies         = true
    manage_policy_overrides = true
    manage_workspaces       = true
    manage_vcs_settings     = true
    manage_projects         = true
    manage_modules          = true
    manage_run_tasks        = true
    manage_providers        = true
    manage_membership       = true
    read_workspaces         = true
    read_projects           = true
  }
}

# Global Auditors - Read-only org access
resource "tfe_team" "global_auditors" {
  name         = "global-auditors"
  organization = data.tfe_organization.this.name
  visibility   = "organization"

  organization_access {
    manage_policies         = false
    manage_policy_overrides = false
    manage_workspaces       = false
    manage_vcs_settings     = false
    manage_projects         = false
    manage_modules          = false
    manage_run_tasks        = false
    manage_providers        = false
    manage_membership       = false
    read_workspaces         = true
    read_projects           = true
  }
}

# Platform Domain Admins - Read-only at org level, will get write access at project level
resource "tfe_team" "platform_admins" {
  for_each = toset(local.platform_domains)

  name         = "platform-${each.key}-admins"
  organization = data.tfe_organization.this.name
  visibility   = "organization"

  organization_access {
    manage_policies         = false
    manage_policy_overrides = false
    manage_workspaces       = false
    manage_vcs_settings     = false
    manage_projects         = false
    manage_modules          = false
    manage_run_tasks        = false
    manage_providers        = false
    manage_membership       = false
    read_workspaces         = true
    read_projects           = true
  }
}
