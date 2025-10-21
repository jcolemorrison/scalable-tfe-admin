# Policy Sets - Sentinel policies from GitHub repositories
# Each policy set is connected to a GitHub repo containing Sentinel policies
# Policy sets are global (not attached to specific projects yet)

resource "tfe_policy_set" "aws_s3" {
  name          = "aws-s3-policies"
  description   = "AWS S3 security and compliance policies"
  organization  = data.tfe_organization.this.name
  kind          = "sentinel"
  global        = false

  vcs_repo {
    identifier         = "jcolemorrison/scalable-tfe-aws-s3-policies"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = data.tfe_oauth_client.github.oauth_token_id
  }
}

# resource "tfe_policy_set" "aws_rds" {
#   name          = "aws-rds-policies"
#   description   = "AWS RDS security and compliance policies"
#   organization  = data.tfe_organization.this.name
#   kind          = "sentinel"
#   global        = false

#   vcs_repo {
#     identifier         = "jcolemorrison/scalable-tfe-aws-rds-policies"
#     branch             = "main"
#     ingress_submodules = false
#     oauth_token_id     = data.tfe_oauth_client.github.oauth_token_id
#   }
# }

resource "tfe_policy_set" "aws_eks" {
  name          = "aws-eks-policies"
  description   = "AWS EKS security and compliance policies"
  organization  = data.tfe_organization.this.name
  kind          = "sentinel"
  global        = false

  vcs_repo {
    identifier         = "jcolemorrison/scalable-tfe-aws-eks-policies"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = data.tfe_oauth_client.github.oauth_token_id
  }
}
