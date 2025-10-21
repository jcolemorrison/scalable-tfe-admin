# Read the organization details
data "tfe_organization" "this" {
  name = "scalable-tfe"
}

# OAuth client lookup (commented template for future use)
# Uncomment when you have a VCS OAuth client configured in TFE
#
# data "tfe_oauth_client" "this" {
#   organization     = data.tfe_organization.this.name
#   service_provider = "github"  # or "gitlab", "bitbucket_server", etc.
# }
