resource "aws_organizations_organization" "main" {

  enabled_policy_types = [
    "SERVICE_CONTROL_POLICY"
  ]

  aws_service_access_principals = [
    "cloudtrail.amazonaws.com"
  ]
}