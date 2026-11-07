locals {  
  email_parts = split("@", var.email)
  email_base   = local.email_parts[0]
  email_domain = local.email_parts[1]
}
