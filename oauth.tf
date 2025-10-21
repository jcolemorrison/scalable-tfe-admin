# OAuth Client Data Source
# Retrieves the GitHub OAuth client created in the TFE UI
data "tfe_oauth_client" "github" {
  organization     = data.tfe_organization.this.name
  service_provider = "github"
}
