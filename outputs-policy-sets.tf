# Policy Set Outputs
output "policy_set_s3_id" {
  description = "ID of the AWS S3 policy set"
  value       = tfe_policy_set.aws_s3.id
}

# output "policy_set_rds_id" {
#   description = "ID of the AWS RDS policy set"
#   value       = tfe_policy_set.aws_rds.id
# }

output "policy_set_eks_id" {
  description = "ID of the AWS EKS policy set"
  value       = tfe_policy_set.aws_eks.id
}

output "oauth_client_id" {
  description = "ID of the GitHub OAuth client"
  value       = data.tfe_oauth_client.github.id
}
