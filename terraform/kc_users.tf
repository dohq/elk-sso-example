locals {
  admin_users = {
    "admin1" = { email : "admin1@example.com" },
    "admin2" = { email : "admin2@example.com" },
  }
  guest_users = {
    "guest1" = { email : "guest1@example.com" },
    "guest2" = { email : "guest2@example.com" },
  }
}

resource "keycloak_user" "admins" {
  realm_id       = keycloak_realm.dummy.id
  for_each       = local.admin_users
  username       = each.key
  enabled        = true
  email_verified = true
  email          = each.value.email

  initial_password {
    value = each.key
  }
}

resource "keycloak_user" "guests" {
  realm_id       = keycloak_realm.dummy.id
  for_each       = local.guest_users
  username       = each.key
  enabled        = true
  email_verified = true
  email          = each.value.email

  initial_password {
    value = each.key
  }
}
