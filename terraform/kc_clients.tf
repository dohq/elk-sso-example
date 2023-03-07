resource "keycloak_openid_client" "kibana" {
  realm_id              = keycloak_realm.dummy.id
  name                  = var.kc_oidc_client_kibana_name
  client_id             = var.kc_oidc_client_kibana_name
  client_secret         = var.kc_oidc_client_kibana_client_secret
  description           = "Kibana"
  access_type           = "CONFIDENTIAL"
  standard_flow_enabled = true
  root_url              = var.kc_oidc_client_kibana_url
  admin_url             = var.kc_oidc_client_kibana_url
  login_theme           = "keycloak"

  web_origins = [
    var.kc_oidc_client_kibana_url,
  ]
  valid_redirect_uris = [
    "${var.kc_oidc_client_kibana_url}*",
  ]
  valid_post_logout_redirect_uris = [
    "${var.kc_oidc_client_kibana_url}*",
  ]
}

resource "keycloak_openid_client" "oauth2_proxy" {
  realm_id              = keycloak_realm.dummy.id
  name                  = var.kc_oidc_client_oauth2_proxy_name
  client_id             = var.kc_oidc_client_oauth2_proxy_name
  client_secret         = var.kc_oidc_client_oauth2_proxy_client_secret
  description           = "oAuth2 Proxy"
  access_type           = "CONFIDENTIAL"
  standard_flow_enabled = true
  root_url              = var.kc_oidc_client_oauth2_proxy_url
  admin_url             = var.kc_oidc_client_oauth2_proxy_url
  login_theme           = "keycloak"

  web_origins = [
    var.kc_oidc_client_oauth2_proxy_url,
  ]
  valid_redirect_uris = [
    "${var.kc_oidc_client_oauth2_proxy_url}*",
  ]
  valid_post_logout_redirect_uris = [
    "${var.kc_oidc_client_oauth2_proxy_url}*",
  ]
}
