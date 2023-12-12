terraform {
  required_providers {
    keycloak = {
      source  = "mrparkers/keycloak"
      version = ">= 4.0.0"
    }
    elasticstack = {
      source  = "elastic/elasticstack"
      version = "0.11.0"
    }
  }
}

provider "keycloak" {
  url                      = var.kc_url
  client_id                = var.kc_client_id
  username                 = var.kc_username
  password                 = var.kc_password
  tls_insecure_skip_verify = var.kc_tls_insecure_skip_verify
}

provider "elasticstack" {
  elasticsearch {
    username  = var.elk_elasticsearch_username
    password  = var.elk_elasticsearch_password
    ca_file   = var.elk_elasticsearch_ca_file
    endpoints = var.elk_elasticsearch_endpoints
  }
}
