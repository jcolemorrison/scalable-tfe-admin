output "org_name" {
  description = "TFE organization name"
  value       = data.tfe_organization.this.name
}

output "org_external_id" {
  description = "TFE organization external ID"
  value       = data.tfe_organization.this.external_id
}

output "org_email" {
  description = "TFE organization email"
  value       = data.tfe_organization.this.email
}

output "org_collaborator_auth_policy" {
  description = "Organization collaborator authentication policy"
  value       = data.tfe_organization.this.collaborator_auth_policy
}

# Uncomment when OAuth client is configured
# output "oauth_client_id" {
#   description = "OAuth client ID for VCS integration"
#   value       = data.tfe_oauth_client.this.id
# }
#
# output "oauth_client_name" {
#   description = "OAuth client name"
#   value       = data.tfe_oauth_client.this.name
# }

# ==========================================
# Team IDs for RBAC binding in later waves
# ==========================================

output "global_admins_team_id" {
  description = "Team ID for global-admins (full org control)"
  value       = tfe_team.global_admins.id
}

output "global_auditors_team_id" {
  description = "Team ID for global-auditors (org read-only)"
  value       = tfe_team.global_auditors.id
}

output "platform_admin_team_ids" {
  description = "Map of domain name to platform admin team IDs"
  value = {
    for domain, team in tfe_team.platform_admins : domain => team.id
  }
}

output "platform_admin_team_names" {
  description = "Map of domain name to platform admin team names"
  value = {
    for domain, team in tfe_team.platform_admins : domain => team.name
  }
}
