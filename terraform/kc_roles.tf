resource "keycloak_role" "elk_admin_role" {
  realm_id    = keycloak_realm.dummy.id
  name        = "elk_admin"
  description = "Elasticsearch Admin"
}

resource "keycloak_role" "elk_guest_role" {
  realm_id    = keycloak_realm.dummy.id
  name        = "elk_guest"
  description = "Elasticsearch Guest"
}
