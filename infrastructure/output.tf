output "organization_id" {
  value = data.aws_organizations_organization.current.id
}

output "email" {
  value = var.email
}

output "email_base" {
  value = local.email_base
}

output "email_domain" {
  value = local.email_domain
}
