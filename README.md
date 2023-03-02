# ELK with Keycloak SSO (OpenID Connect)
Keycloak integration setup Elasticsearch/Kibana 

However, my knowledge of OpenID Connect is almost nothing:)

## Usage
```
docker compose pull
docker compose up create_certs
docker compose up -d
cd terraform
mv terraform.tfvars_example terraform.tfvars
terraform plan
terraform apply
```

https://localhost:5601

https://localhost:8443/admin/

## Requirements
* terraform
* docker-compose

## Author
dohq
