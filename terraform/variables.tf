# keycloak
variable "kc_url" {
  type = string
}

variable "kc_client_id" {
  type = string
}

variable "kc_username" {
  type = string
}

variable "kc_password" {
  type = string
}

variable "kc_tls_insecure_skip_verify" {
  type = bool
}

variable "kc_oidc_client_kibana_name" {
  type = string
}

variable "kc_oidc_client_kibana_url" {
  type = string
}

variable "kc_oidc_client_kibana_client_secret" {
  type = string
}

# oidc Debugger
variable "kc_oidc_client_oauth2_proxy_name" {
  type = string
}

variable "kc_oidc_client_oauth2_proxy_client_secret" {
  type = string
}

variable "kc_oidc_client_oauth2_proxy_url" {
  type = string
}

# elasticstack
variable "elk_elasticsearch_username" {
  type = string
}

variable "elk_elasticsearch_password" {
  type = string
}

variable "elk_elasticsearch_ca_file" {
  type = string
}

variable "elk_elasticsearch_endpoints" {
  type = list(string)
}
