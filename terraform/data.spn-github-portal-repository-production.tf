data "azuread_application" "spn-github-portal-repository-production" {
  display_name = "spn-github-portal-repository-production"
}

data "azuread_service_principal" "spn-github-portal-repository-production_service-principal" {
  application_id = data.azuread_application.spn-github-portal-repository-production.application_id
}
