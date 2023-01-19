data "azuread_application" "spn-github-portal-servers-integration-production" {
  display_name = "spn-github-portal-servers-integration-production"
}

data "azuread_service_principal" "spn-github-portal-servers-integration-production_service-principal" {
  application_id = data.azuread_application.spn-github-portal-servers-integration-production.application_id
}
