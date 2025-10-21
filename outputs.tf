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
