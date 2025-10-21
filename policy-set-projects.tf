# Policy Set Project Attachments
# Attaches each policy set to all projects
# This ensures all workspaces in each project are governed by these policies

# S3 Policies - attached to all projects
resource "tfe_project_policy_set" "s3_gaming" {
  policy_set_id = tfe_policy_set.aws_s3.id
  project_id    = tfe_project.gaming_core.id
}

resource "tfe_project_policy_set" "s3_commerce" {
  policy_set_id = tfe_policy_set.aws_s3.id
  project_id    = tfe_project.commerce_core.id
}

resource "tfe_project_policy_set" "s3_social" {
  policy_set_id = tfe_policy_set.aws_s3.id
  project_id    = tfe_project.social_core.id
}

resource "tfe_project_policy_set" "s3_media" {
  policy_set_id = tfe_policy_set.aws_s3.id
  project_id    = tfe_project.media_core.id
}

resource "tfe_project_policy_set" "s3_analytics" {
  policy_set_id = tfe_policy_set.aws_s3.id
  project_id    = tfe_project.analytics_core.id
}

# RDS Policies - attached to all projects
resource "tfe_project_policy_set" "rds_gaming" {
  policy_set_id = tfe_policy_set.aws_rds.id
  project_id    = tfe_project.gaming_core.id
}

resource "tfe_project_policy_set" "rds_commerce" {
  policy_set_id = tfe_policy_set.aws_rds.id
  project_id    = tfe_project.commerce_core.id
}

resource "tfe_project_policy_set" "rds_social" {
  policy_set_id = tfe_policy_set.aws_rds.id
  project_id    = tfe_project.social_core.id
}

resource "tfe_project_policy_set" "rds_media" {
  policy_set_id = tfe_policy_set.aws_rds.id
  project_id    = tfe_project.media_core.id
}

resource "tfe_project_policy_set" "rds_analytics" {
  policy_set_id = tfe_policy_set.aws_rds.id
  project_id    = tfe_project.analytics_core.id
}

# EKS Policies - attached to all projects
resource "tfe_project_policy_set" "eks_gaming" {
  policy_set_id = tfe_policy_set.aws_eks.id
  project_id    = tfe_project.gaming_core.id
}

resource "tfe_project_policy_set" "eks_commerce" {
  policy_set_id = tfe_policy_set.aws_eks.id
  project_id    = tfe_project.commerce_core.id
}

resource "tfe_project_policy_set" "eks_social" {
  policy_set_id = tfe_policy_set.aws_eks.id
  project_id    = tfe_project.social_core.id
}

resource "tfe_project_policy_set" "eks_media" {
  policy_set_id = tfe_policy_set.aws_eks.id
  project_id    = tfe_project.media_core.id
}

resource "tfe_project_policy_set" "eks_analytics" {
  policy_set_id = tfe_policy_set.aws_eks.id
  project_id    = tfe_project.analytics_core.id
}
