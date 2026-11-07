resource "aws_organizations_account" "log_archive" {
  name      = "log-archive"
  email     = "${local.email_base}+log-archive@${local.email_domain}"

  role_name = "OrganizationAccountAccessRole" 

  parent_id = aws_organizations_organizational_unit.security.id

  iam_user_access_to_billing = "ALLOW" 

  close_on_deletion = true
}

resource "aws_organizations_account" "security_tooling" {
  name      = "security-tooling"
  email     = "${local.email_base}+security-tooling@${local.email_domain}"

  role_name = "OrganizationAccountAccessRole"

  parent_id = aws_organizations_organizational_unit.security.id

  iam_user_access_to_billing = "ALLOW" 

  close_on_deletion = true
}
