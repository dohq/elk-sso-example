resource "keycloak_group" "admins" {
  realm_id = keycloak_realm.dummy.id
  name     = "admins"
}

resource "keycloak_group" "guests" {
  realm_id = keycloak_realm.dummy.id
  name     = "guests"
}

resource "keycloak_group_memberships" "admins" {
  realm_id = keycloak_realm.dummy.id
  group_id = keycloak_group.admins.id
  members = [
    for user in keycloak_user.admins : user.username
  ]
}

resource "keycloak_group_memberships" "guests" {
  realm_id = keycloak_realm.dummy.id
  group_id = keycloak_group.guests.id
  members = [
    for user in keycloak_user.guests : user.username
  ]
}

resource "keycloak_group_roles" "admins" {
  realm_id = keycloak_realm.dummy.id
  group_id = keycloak_group.admins.id
  role_ids = [
    keycloak_role.elk_admin_role.id
  ]
}

resource "keycloak_group_roles" "guests" {
  realm_id = keycloak_realm.dummy.id
  group_id = keycloak_group.guests.id
  role_ids = [
    keycloak_role.elk_guest_role.id
  ]
}
