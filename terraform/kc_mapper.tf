data "keycloak_openid_client_scope" "roles" {
  realm_id = keycloak_realm.dummy.id
  name     = "roles"
}

resource "keycloak_openid_user_realm_role_protocol_mapper" "roles" {
  realm_id         = keycloak_realm.dummy.id
  client_scope_id  = data.keycloak_openid_client_scope.roles.id
  name             = "roles"
  claim_name       = "roles"
  multivalued      = true
  claim_value_type = "String"
  add_to_userinfo  = true
}
