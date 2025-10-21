# Project outputs for workspace creation in next wave
# Individual outputs (not maps) for each project

output "project_gaming_core_id" {
  description = "Project ID for gaming domain core infrastructure"
  value       = tfe_project.gaming_core.id
}

output "project_commerce_core_id" {
  description = "Project ID for commerce domain core infrastructure"
  value       = tfe_project.commerce_core.id
}

output "project_social_core_id" {
  description = "Project ID for social domain core infrastructure"
  value       = tfe_project.social_core.id
}

output "project_media_core_id" {
  description = "Project ID for media domain core infrastructure"
  value       = tfe_project.media_core.id
}

output "project_analytics_core_id" {
  description = "Project ID for analytics domain core infrastructure"
  value       = tfe_project.analytics_core.id
}
