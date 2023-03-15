resource "elasticstack_elasticsearch_index_template" "keycloak_log" {
  name           = "keycloak_log"
  index_patterns = ["keycloak-log-*"]
  template {
    settings = jsonencode({
      number_of_replicas = 0
    })
  }
}

resource "elasticstack_elasticsearch_index_template" "es_audit_log" {
  name           = "es_audit_log"
  index_patterns = ["elasticsearcn-audit-log-*", "kibana-audit-log-*"]
  template {
    settings = jsonencode({
      number_of_replicas = 0
    })
  }
}
