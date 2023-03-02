resource "elasticstack_elasticsearch_security_role_mapping" "elk_admin" {
  name    = "oidc-keycloak-superuser"
  enabled = true
  roles = [
    "superuser"
  ]
  rules = jsonencode({
    all = [
      { field = { "metadata.oidc(roles)" = "elk_admin" } }
    ]
  })
}

resource "elasticstack_elasticsearch_security_role_mapping" "elk_guest" {
  name    = "oidc-keycloak-guest"
  enabled = true
  roles = [
    "viewer"
  ]
  rules = jsonencode({
    all = [
      { field = { "metadata.oidc(roles)" = "elk_guest" } }
    ]
  })
}
