resource "keycloak_user" "admin1" {
  realm_id       = keycloak_realm.dummy.id
  username       = "admin1"
  enabled        = true
  email_verified = true
  email          = "admin1@example.com"

  initial_password {
    value = "admin1"
  }
}

resource "keycloak_user" "guest1" {
  realm_id       = keycloak_realm.dummy.id
  username       = "guest1"
  enabled        = true
  email_verified = true
  email          = "guest1@example.com"

  initial_password {
    value = "guest1"
  }
}

resource "keycloak_user_roles" "admin1" {
  realm_id = keycloak_realm.dummy.id
  user_id  = keycloak_user.admin1.id

  role_ids = [
    keycloak_role.elk_admin_role.id,
  ]
}

resource "keycloak_user_roles" "guest1" {
  realm_id = keycloak_realm.dummy.id
  user_id  = keycloak_user.guest1.id

  role_ids = [
    keycloak_role.elk_guest_role.id,
  ]
}

resource "keycloak_user" "admin2" {
  realm_id       = keycloak_realm.dummy.id
  username       = "admin2"
  enabled        = true
  email_verified = true
  email          = "admin2@example.com"

  initial_password {
    value = "admin2"
  }
}

resource "keycloak_user" "guest2" {
  realm_id       = keycloak_realm.dummy.id
  username       = "guest2"
  enabled        = true
  email_verified = true
  email          = "guest2@example.com"

  initial_password {
    value = "guest2"
  }
}
